class AuthFlowInfo {
  const AuthFlowInfo({
    required this.id,
    required this.expiresAt,
    required this.csrfToken,
    required this.sessionTokenExchangeCode,
    required this.passkeyRequestOptions,
    required this.passkeyCreationOptions,
  });

  final String id;
  final DateTime expiresAt;
  final String? csrfToken;
  final String? sessionTokenExchangeCode;
  final Map<String, dynamic>? passkeyRequestOptions;
  final Map<String, dynamic>? passkeyCreationOptions;
}
