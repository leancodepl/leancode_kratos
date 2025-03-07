import 'package:leancode_kratos_client/src/settings/domain/passkey.dart';

sealed class GetPasskeysResult {
  const GetPasskeysResult();
}

final class GetPasskeysSuccessResult extends GetPasskeysResult {
  const GetPasskeysSuccessResult(
    this.passkeys,
  );

  final List<Passkey> passkeys;
}

final class GetPasskeysErrorResult extends GetPasskeysResult {
  const GetPasskeysErrorResult();
}
