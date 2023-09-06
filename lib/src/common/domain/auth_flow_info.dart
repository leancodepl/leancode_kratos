class AuthFlowInfo {
  const AuthFlowInfo({
    required this.id,
    required this.expiresAt,
    required this.csrfToken,
    required this.sessionTokenExchangeCode,
  });

  final String id;
  final DateTime expiresAt;
  final String? csrfToken;
  final String? sessionTokenExchangeCode;
}
