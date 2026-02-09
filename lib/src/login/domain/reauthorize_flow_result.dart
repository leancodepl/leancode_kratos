import 'package:leancode_kratos_client/src/common/domain/auth_flow_info.dart';

sealed class ReauthorizeFlowResult {
  const ReauthorizeFlowResult();
}

final class ReauthorizeFlowSuccess extends ReauthorizeFlowResult {
  const ReauthorizeFlowSuccess({
    required this.flowInfo,
    required this.availableGroups,
    required this.oidcProviders,
  });

  /// Flow info to pass to `KratosClient.loginWithPassword` for reuse.
  final AuthFlowInfo flowInfo;

  /// Distinct node groups from the flow UI,
  /// e.g. `{"default", "password", "oidc", "passkey"}`.
  final Set<String> availableGroups;

  /// OIDC provider names extracted from oidc group nodes,
  /// e.g. `{"google", "apple", "facebook", "instagram"}`.
  final Set<String> oidcProviders;
}

final class ReauthorizeFlowError extends ReauthorizeFlowResult {
  const ReauthorizeFlowError();
}
