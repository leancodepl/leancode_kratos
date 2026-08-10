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
  final VerificationFlowState state;

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

enum VerificationFlowState {
  chooseMethod,
  sentEmail,
  passedChallenge,
  unknown;

  static VerificationFlowState fromApiState(String state) => switch (state) {
        'choose_method' => chooseMethod,
        'sent_email' => sentEmail,
        'passed_challenge' => passedChallenge,
        _ => unknown,
      };
}
