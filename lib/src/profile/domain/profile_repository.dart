import 'dart:convert';

import 'package:http/http.dart';
import 'package:leancode_kratos_client/leancode_kratos_client.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';
import 'package:leancode_kratos_client/src/login/api/login_success.dart';
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

    return switch (response.statusCode) {
      200 => UpdateSuccess(),
      403 => UpdateRequiresReauthorization(),
      400 => UpdateFailure(error: _handleChangePasswordError(response)),
      _ => UpdateFailure(error: null),
    };
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
      final response = await _api.getSettings(kratosToken: kratosToken);

      if (response.statusCode == 200) {
        final settings = profileSettingsSuccessResponseFromJson(response.body);
        return settings.id;
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

    return switch (response.statusCode) {
      200 => ProfileUpdateSuccess(),
      403 => ProfileUpdateRequiresReauthorization(),
      _ => ProfileUpdateFailure(),
    };
  }

  Future<bool> sendNewPasswordSettingsFlow({
    required SettingsFlowResultData flow,
    required String newPassword,
  }) async {
    final settingsFlow = await _api.sendNewPasswordSettingsFlow(
      newPassword: newPassword,
      kratosToken: flow.sessionToken,
      flowId: flow.flowId,
    );
    return settingsFlow.statusCode == 200;
  }

  Future<UserProfile> getUserProfile() async {
    final kratosToken = await _credentialsStorage.read();

    if (kratosToken == null) {
      return ErrorGettingUserProfile();
    }

    final whoamiResponse =
        await _api.getWhaomiSession(kratosToken: kratosToken);

    if (whoamiResponse.statusCode == 200) {
      try {
        final session = Session.fromJson(
          json.decode(whoamiResponse.body) as Map<String, dynamic>,
        );
        final userId = session.identity.id;
        final traits = session.identity.traits;
        final profileTraits = traits?.entries
            .map(
              (e) => ProfileTrait(
                traitName: e.key,
                value: e.value,
              ),
            )
            .toList();
        return UserProfileData(
          traits: profileTraits!,
          userId: userId!,
        );
      } catch (e, st) {
        _logger.warning('Error getting recovery flow', e, st);
      }
    }
    return ErrorGettingUserProfile();
  }
}