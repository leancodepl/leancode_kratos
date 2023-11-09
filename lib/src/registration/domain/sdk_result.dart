class SdkResult {
  const SdkResult({
    required this.idToken,
    required this.traits,
  });

  final String idToken;
  final Map<String, dynamic> traits;
}
