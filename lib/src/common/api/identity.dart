import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leancode_kratos_client/src/common/api/recovery_address.dart';
import 'package:leancode_kratos_client/src/common/api/verifiable_address.dart';

part 'identity.freezed.dart';
part 'identity.g.dart';

@freezed
class Identity with _$Identity {
  const factory Identity({
    String? id,
    String? schemaId,
    String? schemaUrl,
    String? state,
    DateTime? stateChangedAt,
    Map<String, dynamic>? traits,
    List<VerifiableAddress>? verifiableAddresses,
    List<RecoveryAddress>? recoveryAddresses,
    dynamic metadataPublic,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Identity;

  factory Identity.fromJson(Map<String, dynamic> json) =>
      _$IdentityFromJson(json);
}