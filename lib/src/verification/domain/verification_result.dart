sealed class VerificationResult {}

class VerificationSuccessResult extends VerificationResult {}

class VerificationFailedResult extends VerificationResult {
  VerificationFailedResult({this.errorCode});
  String? errorCode;
}
