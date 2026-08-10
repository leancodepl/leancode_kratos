import 'package:leancode_kratos_client/src/verification/domain/verification_flow_state.dart';

sealed class GetVerificationFlowResult {
  const GetVerificationFlowResult();
}

final class GetVerificationFlowSuccessResult extends GetVerificationFlowResult {
  const GetVerificationFlowSuccessResult({
    required this.flowId,
    required this.state,
    this.email,
  });

  final String flowId;

  /// The state the flow is in, or `null` when it is one this package does not
  /// know about.
  final VerificationFlowState? state;

  /// The address the verification code was sent to. Available once the flow
  /// reaches [VerificationFlowState.sentEmail]; `null` before that.
  final String? email;
}

final class GetVerificationFlowNotFoundResult
    extends GetVerificationFlowResult {
  const GetVerificationFlowNotFoundResult();
}

final class GetVerificationFlowExpiredResult
    extends GetVerificationFlowResult {
  const GetVerificationFlowExpiredResult();
}

final class GetVerificationFlowUnknownErrorResult
    extends GetVerificationFlowResult {
  const GetVerificationFlowUnknownErrorResult();
}
