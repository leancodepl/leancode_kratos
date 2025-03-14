import 'package:leancode_kratos_client/leancode_kratos_client.dart';

sealed class AddPasskeyResult {
  const AddPasskeyResult();
}

final class AddPasskeySuccessResult extends AddPasskeyResult {
  const AddPasskeySuccessResult();
}

final class AddPasskeyReauthenticationRequiredResult extends AddPasskeyResult {
  const AddPasskeyReauthenticationRequiredResult();
}

final class AddPasskeyCancelledResult extends AddPasskeyResult {
  const AddPasskeyCancelledResult();
}

final class AddPasskeyErrorResult extends AddPasskeyResult {
  const AddPasskeyErrorResult({
    this.message,
  });

  final KratosMessage? message;
}
