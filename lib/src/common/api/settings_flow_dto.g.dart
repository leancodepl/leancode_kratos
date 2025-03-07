// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'settings_flow_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SettingsFlowDtoImpl _$$SettingsFlowDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$SettingsFlowDtoImpl(
      id: json['id'] as String,
      type: json['type'] as String,
      expiresAt: DateTime.parse(json['expires_at'] as String),
      issuedAt: DateTime.parse(json['issued_at'] as String),
      requestUrl: json['request_url'] as String,
      returnTo: json['return_to'] as String?,
      ui: UiDto.fromJson(json['ui'] as Map<String, dynamic>),
      sessionTokenExchangeCode: json['session_token_exchange_code'] as String?,
    );

Map<String, dynamic> _$$SettingsFlowDtoImplToJson(
        _$SettingsFlowDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'expires_at': instance.expiresAt.toIso8601String(),
      'issued_at': instance.issuedAt.toIso8601String(),
      'request_url': instance.requestUrl,
      'return_to': instance.returnTo,
      'ui': instance.ui.toJson(),
      'session_token_exchange_code': instance.sessionTokenExchangeCode,
    };
