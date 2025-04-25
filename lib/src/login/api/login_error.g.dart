// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_error.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoginErrorResponse _$LoginErrorResponseFromJson(Map<String, dynamic> json) =>
    LoginErrorResponse(
      id: json['id'] as String,
      oauth2LoginChallenge: json['oauth2_login_challenge'],
      type: json['type'] as String,
      expiresAt: DateTime.parse(json['expires_at'] as String),
      issuedAt: DateTime.parse(json['issued_at'] as String),
      requestUrl: json['request_url'] as String,
      ui: UiDto.fromJson(json['ui'] as Map<String, dynamic>),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      refresh: json['refresh'] as bool,
      requestedAal: json['requested_aal'] as String,
    );

Map<String, dynamic> _$LoginErrorResponseToJson(LoginErrorResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'oauth2_login_challenge': instance.oauth2LoginChallenge,
      'type': instance.type,
      'expires_at': instance.expiresAt.toIso8601String(),
      'issued_at': instance.issuedAt.toIso8601String(),
      'request_url': instance.requestUrl,
      'ui': instance.ui.toJson(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'refresh': instance.refresh,
      'requested_aal': instance.requestedAal,
    };
