import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';

part 'passkey.freezed.dart';

@freezed
class Passkey with _$Passkey {
  const factory Passkey({
    required String id,
    required DateTime addedAt,
    required String displayName,
  }) = _Passkey;

  factory Passkey.fromUiNode(NodeDto node) {
    return Passkey(
      id: node.attributes.value as String,
      addedAt: DateTime.parse(node.meta.label!.context!['added_at']).toLocal(),
      displayName: node.meta.label!.context!['display_name'] as String,
    );
  }
}
