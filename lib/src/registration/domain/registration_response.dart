import 'package:leancode_kratos_client/leancode_kratos_client.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';
import 'package:leancode_kratos_client/src/registration/api/registration_success.dart';

sealed class RegistrationResponse {
  const RegistrationResponse();
}

class VerifyEmailResponse extends RegistrationResponse {
  const VerifyEmailResponse({
    required this.flowId,
    required this.emailToVerify,
  });

  final String flowId;
  final String emailToVerify;
}

class SuccessResponse extends RegistrationResponse {
  const SuccessResponse();
}

class SocialRegisterFinishResponse extends RegistrationResponse {
  const SocialRegisterFinishResponse({
    required this.flowInfo,
    required this.idToken,
    required this.values,
  });

  final AuthFlowInfo flowInfo;
  final String? idToken;
  final List<(String fieldName, dynamic value)> values;
}

class ErrorResponse extends RegistrationResponse {
  const ErrorResponse({required this.errors});

  final List<(String fieldName, KratosMessage error)> errors;
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

  return continueWith?.map(
        (element) {
          return switch (element) {
            ContinueWith(
              action: 'show_verification_ui',
              flow: Flow(
                id: final flowId?,
                verifiableAddress: final emailToVerify?
              )
            ) =>
              VerifyEmailResponse(
                flowId: flowId,
                emailToVerify: emailToVerify,
              ),
            ContinueWith(
              action: 'set_ory_session_token',
              flow: null,
            ) =>
              const SuccessResponse(),
            _ => const FailedRegistration(),
          };
        },
      ).firstOrNull ??
      const SuccessResponse();
}

RegistrationResponse mapRegistrationErrorResponse(AuthFlowDto response) {
  final generalErrors = response.ui.messages;
  final nodes = response.ui.nodes;

  if (generalErrors != null && generalErrors.isNotEmpty) {
    final kratosError = KratosMessage.forId(generalErrors.first.id);
    return ErrorResponse(errors: [('general', kratosError)]);
  }

  if (nodes.any(
    (node) =>
        node.meta.label?.id ==
        KratosMessage.infoSelfServiceRegistrationContinue.id,
  )) {
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
      idToken: null,
      values: values,
    );
  }

  final errors = nodes
      .map((node) {
        return switch ((node.attributes.name, node.messages)) {
          (final attributeName?, [MessageDto(:final id), ...]) => (
              attributeName,
              KratosMessage.forId(id),
            ),
          _ => null
        };
      })
      .nonNulls
      .toList();

  return ErrorResponse(errors: errors);
}
