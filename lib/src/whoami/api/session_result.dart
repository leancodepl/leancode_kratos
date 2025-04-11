import 'package:leancode_kratos_client/src/login/api/login_success.dart';

sealed class SessionResult {
  const SessionResult();
}

final class SessionSuccessResult extends SessionResult {
  const SessionSuccessResult(
    this.session,
  );

  final Session session;
}

final class SessionErrorResult extends SessionResult {
  const SessionErrorResult();
}
