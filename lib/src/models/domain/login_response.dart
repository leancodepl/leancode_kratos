sealed class LoginResponse {}

class LoginSuccess extends LoginResponse {}

class LoginFailure extends LoginResponse {
  int errorId;

  LoginFailure({
    required this.errorId,
  });
}

class ErrorGettingFlowId extends LoginResponse {}

class UnknownLoginError extends LoginResponse {}
