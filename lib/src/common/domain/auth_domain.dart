import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';

part 'auth_domain.freezed.dart';

@freezed
class AuthFlowModel with _$AuthFlowModel {
  const factory AuthFlowModel({
    required String id,
    required DateTime expiresAt,
    String? csrfToken,
    String? sessionTokenExchangeCode,
    required List<AuthFlowField> fields,
  }) = _AuthFlowModel;

  factory AuthFlowModel.formDto(AuthFlowDto dto) {
    return AuthFlowModel(
      id: dto.id,
      expiresAt: dto.expiresAt,
      sessionTokenExchangeCode: dto.sessionTokenExchangeCode,
      csrfToken: dto.ui.nodes
          .firstWhereOrNull((node) => node.attributes.name == 'csrf_token')
          ?.attributes
          .value as String?,
      fields: dto.ui.nodes.map(
        (node) {
          return AuthFlowField(
            name: node.attributes.name,
            type: node.attributes.type,
            requiredField: node.attributes.required,
            disabled: node.attributes.disabled,
            labelId: node.meta.label?.id,
          );
        },
      ).toList(),
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
    AuthFlowFieldValue? value,
  }) = _AuthFlowField;
}

sealed class AuthFlowFieldValue<T> {
  const AuthFlowFieldValue(this.value);

  static AuthFlowFieldValue? fromValue(dynamic value) {
    switch (value) {
      case final String value:
        return AuthFlowFieldStringValue(value);
      case final bool value:
        return AuthFlowFieldBoolValue(value: value);
      default:
        return null;
    }
  }

  final T value;
}

class AuthFlowFieldStringValue extends AuthFlowFieldValue<String> {
  const AuthFlowFieldStringValue(super.value);
}

class AuthFlowFieldBoolValue extends AuthFlowFieldValue<bool> {
  const AuthFlowFieldBoolValue({required bool value}) : super(value);
}
