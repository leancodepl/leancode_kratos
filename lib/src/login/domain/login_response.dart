sealed class LoginResponse {}

class LoginSuccess extends LoginResponse {}

class LoginFailure extends LoginResponse {
  LoginFailure({
    required this.errorId,
  });
  int errorId;
}

class UnverifiedAccountError extends LoginResponse {}

class ErrorGettingFlowId extends LoginResponse {}

class UnknownLoginError extends LoginResponse {}
