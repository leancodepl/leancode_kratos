// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_flow_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VerificationFlowDto _$VerificationFlowDtoFromJson(Map<String, dynamic> json) =>
    VerificationFlowDto(
      active: json['active'] as String?,
      expiresAt: json['expires_at'] == null
          ? null
          : DateTime.parse(json['expires_at'] as String),
      id: json['id'] as String,
      issuedAt: json['issued_at'] == null
          ? null
          : DateTime.parse(json['issued_at'] as String),
      requestUrl: json['request_url'] as String?,
      returnTo: json['return_to'] as String?,
      state: json['state'] as String,
      type: json['type'] as String,
      ui: UiDto.fromJson(json['ui'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$VerificationFlowDtoToJson(
  VerificationFlowDto instance,
) => <String, dynamic>{
  'active': instance.active,
  'expires_at': instance.expiresAt?.toIso8601String(),
  'id': instance.id,
  'issued_at': instance.issuedAt?.toIso8601String(),
  'request_url': instance.requestUrl,
  'return_to': instance.returnTo,
  'state': instance.state,
  'type': instance.type,
  'ui': instance.ui.toJson(),
};
