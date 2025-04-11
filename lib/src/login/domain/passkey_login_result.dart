import 'package:leancode_kratos_client/leancode_kratos_client.dart';

sealed class PasskeyLoginResult {
  const PasskeyLoginResult();
}

final class PasskeyLoginSuccessResult extends PasskeyLoginResult {
  const PasskeyLoginSuccessResult();
}

final class PasskeyLoginCancelledResult extends PasskeyLoginResult {
  const PasskeyLoginCancelledResult();
}

final class PasskeyLoginVerifyEmailResult extends PasskeyLoginResult {
  const PasskeyLoginVerifyEmailResult({
    required this.flowId,
  });

  final String flowId;
}

final class PasskeyLoginErrorResult extends PasskeyLoginResult {
  const PasskeyLoginErrorResult({
    required this.generalErrors,
  });

  final List<KratosMessage> generalErrors;
}

final class PasskeyLoginPasskeyErrorResult extends PasskeyLoginResult {
  const PasskeyLoginPasskeyErrorResult();
}

final class PasskeyLoginUnknownErrorResult extends PasskeyLoginResult {
  const PasskeyLoginUnknownErrorResult();
}
