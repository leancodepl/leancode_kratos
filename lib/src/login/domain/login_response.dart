import 'package:leancode_kratos_client/leancode_kratos_client.dart';

sealed class LoginResponse {}

class LoginSuccess extends LoginResponse {}

class LoginFailure extends LoginResponse {
  LoginFailure({
    required this.errorId,
  });
  KratosError errorId;
}

class UnverifiedAccountError extends LoginResponse {}

class ErrorGettingFlowId extends LoginResponse {}

class UnknownLoginError extends LoginResponse {}
