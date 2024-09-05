
import 'package:freezed_annotation/freezed_annotation.dart';

part 'verifiable_address.freezed.dart';
part 'verifiable_address.g.dart';

@freezed
class VerifiableAddress with _$VerifiableAddress {
  const factory VerifiableAddress({
    String? id,
    String? value,
    bool? verified,
    String? via,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _VerifiableAddress;

  factory VerifiableAddress.fromJson(Map<String, dynamic> json) =>
      _$VerifiableAddressFromJson(json);
}