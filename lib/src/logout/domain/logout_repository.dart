import 'package:leancode_kratos_client/leancode_kratos_client.dart';
import 'package:leancode_kratos_client/src/logout/api/logout_api.dart';
import 'package:logging/logging.dart';

class LogoutRepository {
  LogoutRepository({
    required LogoutApi api,
    required CredentialsStorage credentialsStorage,
  })  : _api = api,
        _credentialsStorage = credentialsStorage;

  final LogoutApi _api;
  final CredentialsStorage _credentialsStorage;
  final Logger _logger = Logger('KratosClientLogger');

  Future<LogoutResult> logout() async {
    final sessionToken = await _credentialsStorage.read();
    await _credentialsStorage.clear();

    if (sessionToken == null) {
      return const LogoutUnknownErrorResult();
    }

    try {
      final response = await _api.logout(sessionToken: sessionToken);
      return switch (response.statusCode) {
        204 => const LogoutSuccessResult(),
        _ => const LogoutUnknownErrorResult(),
      };
    } catch (e, st) {
      _logger.warning('Logout failed.', e, st);
    }
    return const LogoutUnknownErrorResult();
  }
}
