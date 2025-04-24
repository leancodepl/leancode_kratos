import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';
import 'package:leancode_kratos_client/src/json_typedef.dart';

part 'passkey.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Passkey with EquatableMixin {
  const Passkey({
    required this.id,
    required this.addedAt,
    required this.displayName,
  });

  factory Passkey.fromJson(Json json) => _$PasskeyFromJson(json);

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

  Json toJson() => _$PasskeyToJson(this);

  @override
  List<Object?> get props => [id, addedAt, displayName];
}
