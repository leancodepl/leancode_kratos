sealed class SdkResult {
  const SdkResult();
}

class SdkSuccessResult extends SdkResult {
  const SdkSuccessResult({
    required this.idToken,
    required this.traits,
  });

  final String idToken;
  final Map<String, dynamic> traits;
}

class SdkCancelledResult extends SdkResult {
  const SdkCancelledResult();
}

class SdkErrorResult extends SdkResult {
  const SdkErrorResult();
}
