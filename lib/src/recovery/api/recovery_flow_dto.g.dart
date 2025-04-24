// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recovery_flow_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecoveryFlowDto _$RecoveryFlowDtoFromJson(Map<String, dynamic> json) =>
    RecoveryFlowDto(
      id: json['id'] as String,
      type: json['type'] as String,
      expiresAt: DateTime.parse(json['expires_at'] as String),
      issuedAt: DateTime.parse(json['issued_at'] as String),
      requestUrl: json['request_url'] as String,
      ui: UiDto.fromJson(json['ui'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$RecoveryFlowDtoToJson(RecoveryFlowDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'expires_at': instance.expiresAt.toIso8601String(),
      'issued_at': instance.issuedAt.toIso8601String(),
      'request_url': instance.requestUrl,
      'ui': instance.ui.toJson(),
    };
