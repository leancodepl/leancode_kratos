import 'package:leancode_kratos_client/src/registration/api/registration.dart';
import 'package:leancode_kratos_client/src/registration/api/registration_success.dart';

sealed class RegistrationResponse {}

class SuccessResponse extends RegistrationResponse {
  SuccessResponse({
    required this.action,
    required this.flowId,
    required this.emailToVerify,
  });
  String action;
  String flowId;
  String emailToVerify;
}

class SuccessResponseWithoutFurtherAction extends RegistrationResponse {}

class ErrorResponse extends RegistrationResponse {
  ErrorResponse({required this.errors});
  List<(String fieldName, int errorId)> errors;
}

class UnhandledStatusCodeError extends RegistrationResponse {}

class FailedRegistration extends RegistrationResponse {}

RegistrationResponse mapRegistrationSuccessResponse(
  RegistrationSuccessResponse response,
) {
  final continueWith = response.continueWith;
  if (continueWith == null || continueWith.isEmpty) {
    return SuccessResponseWithoutFurtherAction();
  } else {
    final responseData = continueWith
        .map((element) {
          return switch (element) {
            ContinueWith(
              :final action?,
              flow: Flow(
                id: final actionId?,
                verifiableAddress: final emailAddress?
              )
            ) =>
              (action, actionId, emailAddress),
            _ => null,
          };
        })
        .nonNulls
        .toList();
    return SuccessResponse(
      action: responseData.first.$1,
      flowId: responseData.first.$2,
      emailToVerify: responseData.first.$3,
    );
  }
}

RegistrationResponse mapRegistrationErrorResponse(RegistrationFlow response) {
  final generalErrors = response.ui?.messages;
  final nodes = response.ui?.nodes;
  if (nodes == null && generalErrors == null) {
    return FailedRegistration();
  }
  if (generalErrors != null && generalErrors.isNotEmpty) {
    return ErrorResponse(errors: [('general', generalErrors.first.id ?? 0)]);
  }
  final uiNodes = nodes!;
  final errorNodes = uiNodes
      .map((element) {
        return switch ((element.attributes?.name, element.messages)) {
          (final attributeName?, [Message(:final id?), ...]) => (
              attributeName,
              id,
            ),
          _ => null
        };
      })
      .nonNulls
      .toList();
  return ErrorResponse(errors: errorNodes);
}
