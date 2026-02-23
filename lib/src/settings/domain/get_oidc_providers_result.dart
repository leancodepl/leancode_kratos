/// Result of getting OIDC providers status.
sealed class GetOidcProvidersResult {
  const GetOidcProvidersResult();
}

/// Successfully retrieved OIDC providers information.
class GetOidcProvidersSuccessResult extends GetOidcProvidersResult {
  const GetOidcProvidersSuccessResult({
    required this.linkedProviders,
    required this.linkableProviders,
  });

  /// Set of provider names that are currently linked to the user's account.
  final Set<String> linkedProviders;

  /// Set of provider names that can be linked to the user's account.
  final Set<String> linkableProviders;
}

/// Failed to retrieve OIDC providers information.
class GetOidcProvidersErrorResult extends GetOidcProvidersResult {
  const GetOidcProvidersErrorResult();
}
