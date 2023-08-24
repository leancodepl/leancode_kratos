import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';

part 'auth_domain.freezed.dart';

@freezed
class AuthFlowModel with _$AuthFlowModel {
  const factory AuthFlowModel({
    required String id,
    required DateTime expiresAt,
    String? sessionTokenExchangeCode,
    List<AuthFlowField>? fields,
  }) = _AuthFlowModel;

  factory AuthFlowModel.formDto(AuthFlowDto dto) {
    return AuthFlowModel(
      id: dto.id,
      expiresAt: dto.expiresAt,
      sessionTokenExchangeCode: dto.sessionTokenExchangeCode,
      fields: dto.ui.nodes.map((node) {
        return AuthFlowField(
          name: node.attributes.name,
          type: node.attributes.type,
          requiredField: node.attributes.required,
          disabled: node.attributes.disabled,
          labelId: node.meta.label?.id,
        );
      }).toList(),
    );
  }
}

@freezed
class AuthFlowField with _$AuthFlowField {
  const factory AuthFlowField({
    String? name,
    String? type,
    bool? requiredField,
    bool? disabled,
    int? labelId,
  }) = _AuthFlowField;
}
