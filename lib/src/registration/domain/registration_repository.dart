import 'package:http/http.dart';
import 'package:leancode_kratos_client/leancode_kratos_client.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';
import 'package:leancode_kratos_client/src/common/api/data_state.dart';
import 'package:leancode_kratos_client/src/registration/api/registration_api.dart';
import 'package:leancode_kratos_client/src/registration/api/registration_success.dart';
import 'package:logging/logging.dart';

class RegistrationRepository {
  RegistrationRepository({
    required RegistrationApi api,
    required CredentialsStorage credentialsStorage,
  })  : _api = api,
        _credentialsStorage = credentialsStorage;

  final RegistrationApi _api;
  final CredentialsStorage _credentialsStorage;
  final Logger _logger = Logger('KratosClientLogger');

  Future<RegistrationResult> registerWithPassword({
    required String password,
    Map<String, dynamic> traits = const <String, dynamic>{},
  }) async {
    final flow =
        await _initRegistrationFlow(returnSessionTokenExchangeCode: false);

    if (flow == null) {
      return const RegistrationUnknownErrorResult();
    }
    try {
      final response = await _api.registerWithPassword(
        password: password,
        traits: traits,
        flowId: flow.id,
        csrfToken: flow.csrfToken,
      );

      return switch (response) {
        final DataSuccess<Response> response when response.data != null =>
          _handleSuccessResponse(response.data!),
        final DataFailed<Response> response when response.data != null =>
          _handleErrorResponse(response.data!),
        _ => const RegistrationUnknownErrorResult(),
      } as RegistrationResult;
    } catch (e, st) {
      _logger.severe('Error completing registration flow', e, st);
      return const RegistrationUnknownErrorResult();
    }
  }

  Future<AuthFlowDto?> _initRegistrationFlow({
    required bool returnSessionTokenExchangeCode,
  }) async {
    try {
      final result = await _api.initRegistrationFlow(
        returnSessionTokenExchangeCode: returnSessionTokenExchangeCode,
      );
      return result.data;
    } catch (e, st) {
      _logger.warning('Registration flow initialization failed.', e, st);
      return null;
    }
  }

  Future<RegistrationResult> _handleErrorResponse(Response response) async {
    final dto = AuthFlowDto.fromString(response.body);
    return mapRegistrationErrorResponse(dto);
  }

  Future<RegistrationResult> _handleSuccessResponse(
    Response response,
  ) async {
    final decodedResponse =
        RegistrationSuccessResponse.fromString(response.body);
    final result = mapRegistrationSuccessResponse(decodedResponse);

    if ((decodedResponse.sessionToken, decodedResponse.session)
        case (final sessionToken?, final session?)
        when result is RegistrationSuccessResult) {
      await _credentialsStorage.save(
        credentials: sessionToken,
        expirationDate: session.expiresAt.toString(),
      );
    }

    return result;
  }
}
