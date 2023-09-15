sealed class SettingsFlowResult {}

class SettingsFlowResultData extends SettingsFlowResult {
  SettingsFlowResultData({
    required this.cookie,
    required this.flowId,
    required this.csrfToken,
  });

  final String cookie;
  final String flowId;
  final String csrfToken;
}

class SettingsFlowResultError extends SettingsFlowResult {}
