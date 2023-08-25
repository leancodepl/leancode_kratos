import 'package:leancode_kratos_client/leancode_kratos_client.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';
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
  List<(String fieldName, KratosError error)> errors;
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

RegistrationResponse mapRegistrationErrorResponse(AuthFlowDto response) {
  final generalErrors = response.ui.messages;
  final nodes = response.ui.nodes;

  if (generalErrors != null && generalErrors.isNotEmpty) {
    final kratosError = KratosError.forId(generalErrors.first.id);
    return ErrorResponse(errors: [('general', kratosError)]);
  }
  final errorNodes = nodes
      .map((element) {
        return switch ((element.attributes.name, element.messages)) {
          (final attributeName?, [MessageDto(:final id), ...]) => (
              attributeName,
              KratosError.forId(id),
            ),
          _ => null
        };
      })
      .nonNulls
      .toList();
  return ErrorResponse(errors: errorNodes);
}
