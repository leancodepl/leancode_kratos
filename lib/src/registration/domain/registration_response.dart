import 'package:leancode_kratos_client/leancode_kratos_client.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';
import 'package:leancode_kratos_client/src/registration/api/registration_success.dart';

sealed class RegistrationResponse {
  const RegistrationResponse();
}

class VerifyEmailResponse extends RegistrationResponse {
  const VerifyEmailResponse({
    required this.action,
    required this.flowId,
    required this.emailToVerify,
  });

  final String action;
  final String flowId;
  final String emailToVerify;
}

class SuccessResponse extends RegistrationResponse {
  const SuccessResponse();
}

class SocialRegisterFinishResponse extends RegistrationResponse {
  const SocialRegisterFinishResponse({
    required this.flowInfo,
    required this.values,
  });

  final AuthFlowInfo flowInfo;
  final List<(String fieldName, dynamic value)> values;
}

class ErrorResponse extends RegistrationResponse {
  const ErrorResponse({required this.errors});

  final List<(String fieldName, KratosError error)> errors;
}

class UnhandledStatusCodeError extends RegistrationResponse {
  const UnhandledStatusCodeError();
}

class FailedRegistration extends RegistrationResponse {
  const FailedRegistration();
}

RegistrationResponse mapRegistrationSuccessResponse(
  RegistrationSuccessResponse response,
) {
  final continueWith = response.continueWith;
  if (continueWith == null || continueWith.isEmpty) {
    return const SuccessResponse();
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
    return VerifyEmailResponse(
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

  if (nodes.any((node) => node.meta.label?.id == 1040003)) {
    final values = nodes
        .map(
          (node) {
            final name = node.attributes.name;
            final dynamic value = node.attributes.value;

            if (name == null || value == null) {
              return null;
            }

            return (name, value);
          },
        )
        .nonNulls
        .toList();

    return SocialRegisterFinishResponse(
      flowInfo: response.info,
      values: values,
    );
  }

  final errors = nodes
      .map((node) {
        return switch ((node.attributes.name, node.messages)) {
          (final attributeName?, [MessageDto(:final id), ...]) => (
              attributeName,
              KratosError.forId(id),
            ),
          _ => null
        };
      })
      .nonNulls
      .toList();

  return ErrorResponse(errors: errors);
}
