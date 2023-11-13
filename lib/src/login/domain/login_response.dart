import 'package:leancode_kratos_client/leancode_kratos_client.dart';

sealed class LoginResponse {
  const LoginResponse();
}

class LoginSuccess extends LoginResponse {
  const LoginSuccess();
}

class LoginFailure extends LoginResponse {
  const LoginFailure({required this.error});

  final KratosMessage error;
}

class UnverifiedAccountError extends LoginResponse {
  const UnverifiedAccountError({
    required this.flowId,
    required this.emailToVerify,
  });

  final String? flowId;
  final String? emailToVerify;
}

class ErrorGettingFlowId extends LoginResponse {
  const ErrorGettingFlowId();
}

class UnknownLoginError extends LoginResponse {
  const UnknownLoginError();
}
