sealed class RecoveryFlowResult {}

class RecoveryFlow extends RecoveryFlowResult {
  RecoveryFlow(this.flowId);

  final String flowId;
}

class RecoveryFlowError extends RecoveryFlowResult {}
