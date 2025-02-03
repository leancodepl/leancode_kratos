// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_success.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SuccessLoginResponseImpl _$$SuccessLoginResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$SuccessLoginResponseImpl(
      sessionToken: json['session_token'] as String?,
      session: Session.fromJson(json['session'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SuccessLoginResponseImplToJson(
        _$SuccessLoginResponseImpl instance) =>
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

_$IdentityImpl _$$IdentityImplFromJson(Map<String, dynamic> json) =>
    _$IdentityImpl(
      id: json['id'] as String,
      schemaId: json['schema_id'] as String,
      schemaUrl: json['schema_url'] as String,
      state: json['state'] as String,
      stateChangedAt: json['state_changed_at'] == null
          ? null
          : DateTime.parse(json['state_changed_at'] as String),
      traits: json['traits'] as Map<String, dynamic>,
      verifiableAddresses: (json['verifiable_addresses'] as List<dynamic>)
          .map((e) => VerifiableAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
      recoveryAddresses: (json['recovery_addresses'] as List<dynamic>)
          .map((e) => RecoveryAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
      metadataPublic: json['metadata_public'],
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$IdentityImplToJson(_$IdentityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'schema_id': instance.schemaId,
      'schema_url': instance.schemaUrl,
      'state': instance.state,
      'state_changed_at': instance.stateChangedAt?.toIso8601String(),
      'traits': instance.traits,
      'verifiable_addresses':
          instance.verifiableAddresses.map((e) => e.toJson()).toList(),
      'recovery_addresses':
          instance.recoveryAddresses.map((e) => e.toJson()).toList(),
      'metadata_public': instance.metadataPublic,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_$RecoveryAddressImpl _$$RecoveryAddressImplFromJson(
        Map<String, dynamic> json) =>
    _$RecoveryAddressImpl(
      id: json['id'] as String,
      value: json['value'] as String,
      via: json['via'] as String,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$RecoveryAddressImplToJson(
        _$RecoveryAddressImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'via': instance.via,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
    };

_$VerifiableAddressImpl _$$VerifiableAddressImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifiableAddressImpl(
      id: json['id'] as String?,
      value: json['value'] as String,
      verified: json['verified'] as bool,
      via: json['via'] as String,
      status: json['status'] as String,
      verifiedAt: json['verified_at'] == null
          ? null
          : DateTime.parse(json['verified_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$VerifiableAddressImplToJson(
        _$VerifiableAddressImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'verified': instance.verified,
      'via': instance.via,
      'status': instance.status,
      'verified_at': instance.verifiedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
