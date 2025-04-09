sealed class SessionValidityResult {
  const SessionValidityResult();
}

final class SessionValiditySuccessResult extends SessionValidityResult {
  const SessionValiditySuccessResult({
    required this.isValid,
    required this.expiresAt,
  });

  final bool isValid;
  final DateTime? expiresAt;
}

final class SessionValidityErrorResult extends SessionValidityResult {
  const SessionValidityErrorResult();
}
