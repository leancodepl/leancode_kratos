sealed class VerificationFlow {}

class VerificationFlowResult extends VerificationFlow {
  VerificationFlowResult({required this.flowId});
  String flowId;
}

class VerificationFlowResultError extends VerificationFlow {}
