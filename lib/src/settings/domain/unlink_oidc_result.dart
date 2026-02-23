import 'package:leancode_kratos_client/leancode_kratos_client.dart';

sealed class UnlinkOidcResult {
  const UnlinkOidcResult();
}

final class UnlinkOidcSuccessResult extends UnlinkOidcResult {
  const UnlinkOidcSuccessResult();
}

final class UnlinkOidcReauthenticationRequiredResult extends UnlinkOidcResult {
  const UnlinkOidcReauthenticationRequiredResult();
}

final class UnlinkOidcErrorResult extends UnlinkOidcResult {
  const UnlinkOidcErrorResult({this.message});

  final KratosMessage? message;
}
