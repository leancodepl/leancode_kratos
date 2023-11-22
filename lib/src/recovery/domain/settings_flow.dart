sealed class SettingsFlowResult {}

class SettingsFlowResultData extends SettingsFlowResult {
  SettingsFlowResultData({
    required this.flowId,
    required this.sessionToken,
  });

  final String flowId;
  final String sessionToken;
}

class SettingsFlowResultError extends SettingsFlowResult {}
