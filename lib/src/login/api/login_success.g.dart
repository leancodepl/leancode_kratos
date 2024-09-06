// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_success.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginSuccessResponseImpl _$$LoginSuccessResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginSuccessResponseImpl(
      sessionToken: json['session_token'] as String,
      session: Session.fromJson(json['session'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginSuccessResponseImplToJson(
        _$LoginSuccessResponseImpl instance) =>
    <String, dynamic>{
      'session_token': instance.sessionToken,
      'session': instance.session.toJson(),
    };

_$SessionImpl _$$SessionImplFromJson(Map<String, dynamic> json) =>
    _$SessionImpl(
      id: json['id'] as String,
      active: json['active'] as bool,
      expiresAt: DateTime.parse(json['expires_at'] as String),
      authenticatedAt: DateTime.parse(json['authenticated_at'] as String),
      authenticatorAssuranceLevel:
          json['authenticator_assurance_level'] as String,
      authenticationMethods: (json['authentication_methods'] as List<dynamic>)
          .map((e) => AuthenticationMethod.fromJson(e as Map<String, dynamic>))
          .toList(),
      issuedAt: DateTime.parse(json['issued_at'] as String),
      identity: Identity.fromJson(json['identity'] as Map<String, dynamic>),
      devices: (json['devices'] as List<dynamic>)
          .map((e) => Device.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$SessionImplToJson(_$SessionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'active': instance.active,
      'expires_at': instance.expiresAt.toIso8601String(),
      'authenticated_at': instance.authenticatedAt.toIso8601String(),
      'authenticator_assurance_level': instance.authenticatorAssuranceLevel,
      'authentication_methods':
          instance.authenticationMethods.map((e) => e.toJson()).toList(),
      'issued_at': instance.issuedAt.toIso8601String(),
      'identity': instance.identity.toJson(),
      'devices': instance.devices.map((e) => e.toJson()).toList(),
    };

_$AuthenticationMethodImpl _$$AuthenticationMethodImplFromJson(
        Map<String, dynamic> json) =>
    _$AuthenticationMethodImpl(
      method: json['method'] as String,
      aal: json['aal'] as String,
      completedAt: DateTime.parse(json['completed_at'] as String),
    );

Map<String, dynamic> _$$AuthenticationMethodImplToJson(
        _$AuthenticationMethodImpl instance) =>
    <String, dynamic>{
      'method': instance.method,
      'aal': instance.aal,
      'completed_at': instance.completedAt.toIso8601String(),
    };

_$DeviceImpl _$$DeviceImplFromJson(Map<String, dynamic> json) => _$DeviceImpl(
      id: json['id'] as String,
      ipAddress: json['ip_address'] as String,
      userAgent: json['user_agent'] as String,
      location: json['location'] as String,
    );

Map<String, dynamic> _$$DeviceImplToJson(_$DeviceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'ip_address': instance.ipAddress,
      'user_agent': instance.userAgent,
      'location': instance.location,
    };
