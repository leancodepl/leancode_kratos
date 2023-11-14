import 'package:leancode_kratos_client/leancode_kratos_client.dart';

sealed class LoginResult {
  const LoginResult();
}

class LoginSuccessResult extends LoginResult {
  const LoginSuccessResult();
}

class LoginVerifyEmailResult extends LoginResult {
  const LoginVerifyEmailResult({
    required this.flowId,
    required this.emailToVerify,
  });

  final String flowId;
  final String emailToVerify;
}

class LoginErrorResult extends LoginResult {
  const LoginErrorResult({
    required this.generalErrors,
    required this.fieldErrors,
  });

  final List<KratosMessage> generalErrors;
  final List<(String fieldName, KratosMessage error)> fieldErrors;
}

class LoginUnknownErrorResult extends LoginResult {
  const LoginUnknownErrorResult();
}
