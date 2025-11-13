sealed class PasskeyCallbackResult {
  const PasskeyCallbackResult();
}

final class PasskeyCallbackSuccessResult extends PasskeyCallbackResult {
  const PasskeyCallbackSuccessResult(this.publicKeyJson);

  final String publicKeyJson;
}

final class PasskeyCallbackErrorResult extends PasskeyCallbackResult {
  const PasskeyCallbackErrorResult();
}

final class PasskeyCallbackCancelledResult extends PasskeyCallbackResult {
  const PasskeyCallbackCancelledResult();
}
