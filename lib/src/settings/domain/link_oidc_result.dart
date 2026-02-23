import 'package:leancode_kratos_client/leancode_kratos_client.dart';

sealed class LinkOidcResult {
  const LinkOidcResult();
}

final class LinkOidcSuccessResult extends LinkOidcResult {
  const LinkOidcSuccessResult();
}

final class LinkOidcReauthenticationRequiredResult extends LinkOidcResult {
  const LinkOidcReauthenticationRequiredResult();
}

final class LinkOidcCancelledResult extends LinkOidcResult {
  const LinkOidcCancelledResult();
}

/// Browser flow has been started. The caller should wait for the deep link
/// callback and then call [KratosClient.completeOidcLink] with the received URI.
final class LinkOidcBrowserFlowStartedResult extends LinkOidcResult {
  const LinkOidcBrowserFlowStartedResult();
}

final class LinkOidcErrorResult extends LinkOidcResult {
  const LinkOidcErrorResult({this.message});

  final KratosMessage? message;
}
