import 'package:equatable/equatable.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';

part 'passkey.g.dart';

class Passkey with EquatableMixin {
  const Passkey({
    required this.id,
    required this.addedAt,
    required this.displayName,
  });

  factory Passkey.fromJson(Map<String, dynamic> json) =>
      _$PasskeyFromJson(json);

  factory Passkey.fromUiNode(NodeDto node) {
    return Passkey(
      id: node.attributes.value as String,
      addedAt: DateTime.parse(node.meta.label!.context!['added_at'] as String)
          .toLocal(),
      displayName: node.meta.label!.context!['display_name'] as String,
    );
  }

  final String id;
  final DateTime addedAt;
  final String displayName;

  Map<String, dynamic> toJson() => _$PasskeyToJson(this);

  @override
  List<Object?> get props => [id, addedAt, displayName];
}
