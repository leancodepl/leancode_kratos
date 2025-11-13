import 'package:leancode_kratos_client/leancode_kratos_client.dart';

sealed class RemovePasskeyResult {
  const RemovePasskeyResult();
}

final class RemovePasskeySuccessResult extends RemovePasskeyResult {
  const RemovePasskeySuccessResult();
}

final class RemovePasskeyReauthenticationRequiredResult
    extends RemovePasskeyResult {
  const RemovePasskeyReauthenticationRequiredResult();
}

final class RemovePasskeyErrorResult extends RemovePasskeyResult {
  const RemovePasskeyErrorResult({this.message});

  final KratosMessage? message;
}
