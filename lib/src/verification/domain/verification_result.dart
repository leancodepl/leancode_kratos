import 'package:leancode_kratos_client/leancode_kratos_client.dart';

sealed class VerificationResult {
  const VerificationResult();
}

class VerificationSuccessResult extends VerificationResult {
  const VerificationSuccessResult();
}

class VerificationErrorResult extends VerificationResult {
  const VerificationErrorResult({
    required this.generalErrors,
    required this.fieldErrors,
  });

  final List<KratosMessage> generalErrors;
  final List<(String fieldName, KratosMessage error)> fieldErrors;
}

class VerificationUnknownErrorResult extends VerificationResult {
  const VerificationUnknownErrorResult();
}
