import 'package:leancode_kratos_client/leancode_kratos_client.dart';

sealed class VerificationResult {}

class VerificationSuccessResult extends VerificationResult {}

class VerificationFailedResult extends VerificationResult {
  VerificationFailedResult({this.error});

  KratosMessage? error;
}
