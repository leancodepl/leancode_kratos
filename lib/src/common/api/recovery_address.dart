import 'package:freezed_annotation/freezed_annotation.dart';

part 'recovery_address.freezed.dart';
part 'recovery_address.g.dart';

@freezed
class RecoveryAddress with _$RecoveryAddress {
  const factory RecoveryAddress({
    String? id,
    String? value,
    String? via,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _RecoveryAddress;

  factory RecoveryAddress.fromJson(Map<String, dynamic> json) =>
      _$RecoveryAddressFromJson(json);
}