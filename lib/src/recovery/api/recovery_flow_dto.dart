import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';

part 'recovery_flow_dto.freezed.dart';
part 'recovery_flow_dto.g.dart';

@freezed
class RecoveryFlowDto with _$RecoveryFlowDto {
  const factory RecoveryFlowDto({
    required String id,
    required String type,
    required DateTime expiresAt,
    required DateTime issuedAt,
    required String requestUrl,
    required UiDto ui,
  }) = _RecoveryFlowDto;

  factory RecoveryFlowDto.fromJson(Map<String, dynamic> json) =>
      _$RecoveryFlowDtoFromJson(json);

  const RecoveryFlowDto._();

  String? get csrfToken => ui.nodes
      .firstWhereOrNull((node) => node.attributes.name == 'csrf_token')
      ?.attributes
      .value as String?;
}
