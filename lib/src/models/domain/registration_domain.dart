import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leancode_kratos_client/src/models/registration.dart';

part 'registration_domain.freezed.dart';

@freezed
class RegistrationFlowModel with _$RegistrationFlowModel {
  const factory RegistrationFlowModel({
    String? flowId,
    DateTime? expiresAt,
    String? method,
    List<RegistrationFlowField>? fields,
  }) = _RegistrationFlowModel;

  factory RegistrationFlowModel.fromRegistrationFlow(
    RegistrationFlow registrationFlow,
  ) {
    final method = registrationFlow.ui?.nodes
        ?.cast<Node?>()
        .firstWhere(
          (node) => node?.attributes?.name == 'method',
          orElse: () => null,
        )
        ?.attributes
        ?.value;

    return RegistrationFlowModel(
      flowId: registrationFlow.id,
      expiresAt: registrationFlow.expiresAt,
      method: method,
      fields: registrationFlow.ui?.nodes?.map((node) {
        return RegistrationFlowField(
          name: node.attributes?.name,
          type: node.attributes?.type,
          requiredField: node.attributes?.required,
          disabled: node.attributes?.disabled,
          labelId: node.meta?.label?.id,
        );
      }).toList(),
    );
  }
}

@freezed
class RegistrationFlowField with _$RegistrationFlowField {
  const factory RegistrationFlowField({
    String? name,
    String? type,
    bool? requiredField,
    bool? disabled,
    int? labelId,
  }) = _RegistrationFlowField;
}
