// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration_success.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegistrationSuccessResponse _$$_RegistrationSuccessResponseFromJson(
        Map<String, dynamic> json) =>
    _$_RegistrationSuccessResponse(
      identity: json['identity'] == null
          ? null
          : Identity.fromJson(json['identity'] as Map<String, dynamic>),
      continueWith: (json['continue_with'] as List<dynamic>?)
          ?.map((e) => ContinueWith.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_RegistrationSuccessResponseToJson(
        _$_RegistrationSuccessResponse instance) =>
    <String, dynamic>{
      'identity': instance.identity?.toJson(),
      'continue_with': instance.continueWith?.map((e) => e.toJson()).toList(),
    };

_$_ContinueWith _$$_ContinueWithFromJson(Map<String, dynamic> json) =>
    _$_ContinueWith(
      action: json['action'] as String?,
      flow: json['flow'] == null
          ? null
          : Flow.fromJson(json['flow'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ContinueWithToJson(_$_ContinueWith instance) =>
    <String, dynamic>{
      'action': instance.action,
      'flow': instance.flow?.toJson(),
    };

_$_Flow _$$_FlowFromJson(Map<String, dynamic> json) => _$_Flow(
      id: json['id'] as String?,
      verifiableAddress: json['verifiable_address'] as String?,
    );

Map<String, dynamic> _$$_FlowToJson(_$_Flow instance) => <String, dynamic>{
      'id': instance.id,
      'verifiable_address': instance.verifiableAddress,
    };

_$_Identity _$$_IdentityFromJson(Map<String, dynamic> json) => _$_Identity(
      id: json['id'] as String?,
      schemaId: json['schema_id'] as String?,
      schemaUrl: json['schema_url'] as String?,
      state: json['state'] as String?,
      stateChangedAt: json['state_changed_at'] == null
          ? null
          : DateTime.parse(json['state_changed_at'] as String),
      traits: json['traits'] == null
          ? null
          : Traits.fromJson(json['traits'] as Map<String, dynamic>),
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

Map<String, dynamic> _$$_IdentityToJson(_$_Identity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'schema_id': instance.schemaId,
      'schema_url': instance.schemaUrl,
      'state': instance.state,
      'state_changed_at': instance.stateChangedAt?.toIso8601String(),
      'traits': instance.traits?.toJson(),
      'verifiable_addresses':
          instance.verifiableAddresses?.map((e) => e.toJson()).toList(),
      'recovery_addresses':
          instance.recoveryAddresses?.map((e) => e.toJson()).toList(),
      'metadata_public': instance.metadataPublic,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$_RecoveryAddress _$$_RecoveryAddressFromJson(Map<String, dynamic> json) =>
    _$_RecoveryAddress(
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

Map<String, dynamic> _$$_RecoveryAddressToJson(_$_RecoveryAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'via': instance.via,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$_Traits _$$_TraitsFromJson(Map<String, dynamic> json) => _$_Traits(
      givenName: json['given_name'] as String?,
      familyName: json['family_name'] as String?,
      regulationsAccepted: json['regulations_accepted'] as bool?,
      email: json['email'] as String?,
    );

Map<String, dynamic> _$$_TraitsToJson(_$_Traits instance) => <String, dynamic>{
      'given_name': instance.givenName,
      'family_name': instance.familyName,
      'regulations_accepted': instance.regulationsAccepted,
      'email': instance.email,
    };

_$_VerifiableAddress _$$_VerifiableAddressFromJson(Map<String, dynamic> json) =>
    _$_VerifiableAddress(
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

Map<String, dynamic> _$$_VerifiableAddressToJson(
        _$_VerifiableAddress instance) =>
    <String, dynamic>{
      'id': instance.id,
      'value': instance.value,
      'verified': instance.verified,
      'via': instance.via,
      'status': instance.status,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
