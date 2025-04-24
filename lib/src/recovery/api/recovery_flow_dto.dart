import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';
import 'package:leancode_kratos_client/src/json_typedef.dart';

part 'recovery_flow_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class RecoveryFlowDto with EquatableMixin {
  const RecoveryFlowDto({
    required this.id,
    required this.type,
    required this.expiresAt,
    required this.issuedAt,
    required this.requestUrl,
    required this.ui,
  });

  factory RecoveryFlowDto.fromJson(Json json) =>
      _$RecoveryFlowDtoFromJson(json);

  final String id;
  final String type;
  final DateTime expiresAt;
  final DateTime issuedAt;
  final String requestUrl;
  final UiDto ui;

  Json toJson() => _$RecoveryFlowDtoToJson(this);

  String? get csrfToken => ui.nodes
      .firstWhereOrNull((node) => node.attributes.name == 'csrf_token')
      ?.attributes
      .value as String?;

  @override
  List<Object?> get props => [
        id,
        type,
        expiresAt,
        issuedAt,
        requestUrl,
        ui,
      ];
}
