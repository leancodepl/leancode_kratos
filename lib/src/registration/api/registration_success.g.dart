// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_success.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RegistrationSuccessResponseImpl _$$RegistrationSuccessResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$RegistrationSuccessResponseImpl(
      continueWith: (json['continue_with'] as List<dynamic>?)
          ?.map((e) => ContinueWith.fromJson(e as Map<String, dynamic>))
          .toList(),
      identity: json['identity'] == null
          ? null
          : Identity.fromJson(json['identity'] as Map<String, dynamic>),
      session: json['session'] == null
          ? null
          : Session.fromJson(json['session'] as Map<String, dynamic>),
      sessionToken: json['session_token'] as String?,
      id: json['id'] as String?,
      oauth2LoginChallenge: json['oauth2_login_challenge'] as String?,
      type: json['type'] as String?,
      expiresAt: json['expires_at'] == null
          ? null
          : DateTime.parse(json['expires_at'] as String),
      issuedAt: json['issued_at'] == null
          ? null
          : DateTime.parse(json['issued_at'] as String),
      requestUrl: json['request_url'] as String?,
      returnTo: json['return_to'] as String?,
      ui: json['ui'] == null
          ? null
          : UiDto.fromJson(json['ui'] as Map<String, dynamic>),
      sessionTokenExchangeCode: json['session_token_exchange_code'] as String?,
    );

Map<String, dynamic> _$$RegistrationSuccessResponseImplToJson(
        _$RegistrationSuccessResponseImpl instance) =>
    <String, dynamic>{
      'continue_with': instance.continueWith?.map((e) => e.toJson()).toList(),
      'identity': instance.identity?.toJson(),
      'session': instance.session?.toJson(),
      'session_token': instance.sessionToken,
      'id': instance.id,
      'oauth2_login_challenge': instance.oauth2LoginChallenge,
      'type': instance.type,
      'expires_at': instance.expiresAt?.toIso8601String(),
      'issued_at': instance.issuedAt?.toIso8601String(),
      'request_url': instance.requestUrl,
      'return_to': instance.returnTo,
      'ui': instance.ui?.toJson(),
      'session_token_exchange_code': instance.sessionTokenExchangeCode,
    };

_$RegistrationBrowserLocationChangeRequiredResponseImpl
    _$$RegistrationBrowserLocationChangeRequiredResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$RegistrationBrowserLocationChangeRequiredResponseImpl(
          redirectBrowserTo: json['redirect_browser_to'] as String?,
        );

Map<String, dynamic>
    _$$RegistrationBrowserLocationChangeRequiredResponseImplToJson(
            _$RegistrationBrowserLocationChangeRequiredResponseImpl instance) =>
        <String, dynamic>{
          'redirect_browser_to': instance.redirectBrowserTo,
        };
