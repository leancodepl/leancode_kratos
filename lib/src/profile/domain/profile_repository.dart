import 'package:http/http.dart';
import 'package:leancode_kratos_client/leancode_kratos_client.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';
import 'package:leancode_kratos_client/src/common/api/data_state.dart';
import 'package:leancode_kratos_client/src/profile/api/profile_api.dart';
import 'package:leancode_kratos_client/src/profile/api/profile_settings.dart';
import 'package:logging/logging.dart';

class ProfileRepository {
  ProfileRepository({
    required ProfileApi api,
    required CredentialsStorage credentialsStorage,
  })  : _api = api,
        _credentialsStorage = credentialsStorage;

  final ProfileApi _api;
  final CredentialsStorage _credentialsStorage;
  final Logger _logger = Logger('KratosClientLogger');

  Future<UpdatePassword> updatePassword({
    required String password,
  }) async {
    final settingsFlowId = await _getSettingsFlowId();
    final kratosToken = await _credentialsStorage.read();

    if (kratosToken == null || settingsFlowId == null) {
      return UpdateRequiresReauthorization();
    }
    final response = await _api.updatePassword(
      password: password,
      kratosToken: kratosToken,
      settingsFlowId: settingsFlowId,
    );

    if (response is DataSuccess) {
      return UpdateSuccess();
    } else if (response.data case final Response response?) {
      return switch (response.statusCode) {
        403 => UpdateRequiresReauthorization(),
        400 => UpdateFailure(error: _handleChangePasswordError(response)),
        _ => UpdateFailure(error: null),
      };
    }
    return UpdateFailure(error: null);
  }

  KratosMessage? _handleChangePasswordError(Response response) {
    final dto = AuthFlowDto.fromString(response.body);
    final nodes = dto.ui.nodes;
    final errors = nodes
        .map((node) {
          return switch ((node.attributes.name, node.messages)) {
            (final attributeName?, [MessageDto(:final id), ...]) => (
                attributeName,
                KratosMessage.forId(id),
              ),
            _ => null
          };
        })
        .nonNulls
        .toList();
    return errors.firstOrNull?.$2;
  }

  Future<String?> _getSettingsFlowId() async {
    try {
      final kratosToken = await _credentialsStorage.read();
      if (kratosToken == null) {
        return null;
      }
      final settings = await _api.getSettings(kratosToken: kratosToken);

      if (settings.data
          case final ProfileSettingsSuccessResponse profileSettings) {
        return profileSettings.id;
      }
    } catch (e, st) {
      _logger.warning('Error getting recovery flow', e, st);
    }
    return null;
  }

  Future<UpdateProfile> updateTraits({
    required List<ProfileTrait> traits,
  }) async {
    final settingsFlowId = await _getSettingsFlowId();
    final kratosToken = await _credentialsStorage.read();

    if (kratosToken == null || settingsFlowId == null) {
      return ProfileUpdateFailure();
    }

    final traitsMap = Map<String, dynamic>.fromEntries(
      traits.map(
        (trait) => MapEntry<String, dynamic>(trait.traitName, trait.value),
      ),
    );

    final response = await _api.updateTraits(
      kratosToken: kratosToken,
      settingsFlowId: settingsFlowId,
      traitsMap: traitsMap,
    );

    return switch (response) {
      final DataSuccess _ => ProfileUpdateSuccess(),
      final DataFailed<Response> response
          when response.data?.statusCode == 403 =>
        ProfileUpdateRequiresReauthorization(),
      _ => ProfileUpdateFailure(),
    };
  }
}
