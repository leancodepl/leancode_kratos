// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_settings.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ProfileSettingsSuccessResponseImpl
    _$$ProfileSettingsSuccessResponseImplFromJson(Map<String, dynamic> json) =>
        _$ProfileSettingsSuccessResponseImpl(
          active: json['active'] as String?,
          continueWith: (json['continue_with'] as List<dynamic>?)
              ?.map((e) => ContinueWith.fromJson(e as Map<String, dynamic>))
              .toList(),
          expiresAt: json['expires_at'] == null
              ? null
              : DateTime.parse(json['expires_at'] as String),
          id: json['id'] as String?,
          identity: json['identity'] == null
              ? null
              : Identity.fromJson(json['identity'] as Map<String, dynamic>),
          issuedAt: json['issued_at'] == null
              ? null
              : DateTime.parse(json['issued_at'] as String),
          requestUrl: json['request_url'] as String?,
          returnTo: json['return_to'] as String?,
          type: json['type'] as String?,
          ui: json['ui'] == null
              ? null
              : UiDto.fromJson(json['ui'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$ProfileSettingsSuccessResponseImplToJson(
        _$ProfileSettingsSuccessResponseImpl instance) =>
    <String, dynamic>{
      'active': instance.active,
      'continue_with': instance.continueWith?.map((e) => e.toJson()).toList(),
      'expires_at': instance.expiresAt?.toIso8601String(),
      'id': instance.id,
      'identity': instance.identity?.toJson(),
      'issued_at': instance.issuedAt?.toIso8601String(),
      'request_url': instance.requestUrl,
      'return_to': instance.returnTo,
      'type': instance.type,
      'ui': instance.ui?.toJson(),
    };
