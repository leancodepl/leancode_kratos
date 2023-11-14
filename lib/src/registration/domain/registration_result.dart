import 'package:leancode_kratos_client/leancode_kratos_client.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';
import 'package:leancode_kratos_client/src/registration/api/registration_success.dart';

sealed class RegistrationResult {
  const RegistrationResult();
}

class RegistrationSuccessResult extends RegistrationResult {
  const RegistrationSuccessResult();
}

class RegistrationVerifyEmailResult extends RegistrationResult {
  const RegistrationVerifyEmailResult({
    required this.flowId,
    required this.emailToVerify,
  });

  final String flowId;
  final String emailToVerify;
}

class RegistrationSocialFinishResult extends RegistrationResult {
  const RegistrationSocialFinishResult({
    required this.flowInfo,
    required this.idToken,
    required this.values,
  });

  final AuthFlowInfo flowInfo;
  final String? idToken;
  final List<(String fieldName, dynamic value)> values;
}

class RegistrationErrorResult extends RegistrationResult {
  const RegistrationErrorResult({
    required this.generalErrors,
    required this.fieldErrors,
  });

  final List<KratosMessage> generalErrors;
  final List<(String fieldName, KratosMessage error)> fieldErrors;
}

class RegistrationUnknownErrorResult extends RegistrationResult {
  const RegistrationUnknownErrorResult();
}

RegistrationResult mapRegistrationSuccessResponse(
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
              RegistrationVerifyEmailResult(
                flowId: flowId,
                emailToVerify: emailToVerify,
              ),
            ContinueWith(
              action: 'set_ory_session_token',
              flow: null,
            ) =>
              const RegistrationSuccessResult(),
            _ => const RegistrationUnknownErrorResult(),
          };
        },
      ).firstOrNull ??
      const RegistrationSuccessResult();
}

RegistrationResult mapRegistrationErrorResponse(AuthFlowDto response) {
  final nodes = response.ui.nodes;

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

    return RegistrationSocialFinishResult(
      flowInfo: response.info,
      idToken: null,
      values: values,
    );
  }

  return RegistrationErrorResult(
    generalErrors: response.ui.getGeneralMessages(),
    fieldErrors: response.ui.getFieldMessages(),
  );
}
