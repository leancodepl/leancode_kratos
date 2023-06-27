sealed class RegistrationResponse {}

class SuccessResponse extends RegistrationResponse {
  String action;
  String flowId;
  String emailToVerify;

  SuccessResponse({
    required this.action,
    required this.flowId,
    required this.emailToVerify,
  });
}

class SuccessResponseWithoutFurtherAction extends RegistrationResponse {}

class ErrorResponse extends RegistrationResponse {
  List<(String fieldName, int errorId)> errors;

  ErrorResponse({required this.errors});
}

class UnhandledStatusCodeError extends RegistrationResponse {}

class FailedRegistration extends RegistrationResponse {}
