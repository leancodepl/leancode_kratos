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

_$ContinueWithImpl _$$ContinueWithImplFromJson(Map<String, dynamic> json) =>
    _$ContinueWithImpl(
      action: json['action'] as String?,
      flow: json['flow'] == null
          ? null
          : Flow.fromJson(json['flow'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ContinueWithImplToJson(_$ContinueWithImpl instance) =>
    <String, dynamic>{
      'action': instance.action,
      'flow': instance.flow?.toJson(),
    };

_$FlowImpl _$$FlowImplFromJson(Map<String, dynamic> json) => _$FlowImpl(
      id: json['id'] as String?,
      verifiableAddress: json['verifiable_address'] as String?,
    );

Map<String, dynamic> _$$FlowImplToJson(_$FlowImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'verifiable_address': instance.verifiableAddress,
    };

_$IdentityImpl _$$IdentityImplFromJson(Map<String, dynamic> json) =>
    _$IdentityImpl(
      id: json['id'] as String?,
      schemaId: json['schema_id'] as String?,
      schemaUrl: json['schema_url'] as String?,
      state: json['state'] as String?,
      stateChangedAt: json['state_changed_at'] == null
          ? null
          : DateTime.parse(json['state_changed_at'] as String),
      traits: json['traits'] as Map<String, dynamic>?,
      verifiableAddresses: (json['verifiable_addresses'] as List<dynamic>?)
          ?.map((e) => VerifiableAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
      recoveryAddresses: (json['recovery_addresses'] as List<dynamic>?)
          ?.map((e) => RecoveryAddress.fromJson(e as Map<String, dynamic>))
          .toList(),
      metadataPublic: json['metadata_public'],
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
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
          instance.verifiableAddresses?.map((e) => e.toJson()).toList(),
      'recovery_addresses':
          instance.recoveryAddresses?.map((e) => e.toJson()).toList(),
      'metadata_public': instance.metadataPublic,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$RecoveryAddressImpl _$$RecoveryAddressImplFromJson(
        Map<String, dynamic> json) =>
    _$RecoveryAddressImpl(
      id: json['id'] as String?,
      value: json['value'] as String?,
      via: json['via'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$RecoveryAddressImplToJson(
        _$RecoveryAddressImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'via': instance.via,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$VerifiableAddressImpl _$$VerifiableAddressImplFromJson(
        Map<String, dynamic> json) =>
    _$VerifiableAddressImpl(
      id: json['id'] as String?,
      value: json['value'] as String?,
      verified: json['verified'] as bool?,
      via: json['via'] as String?,
      status: json['status'] as String?,
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
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
