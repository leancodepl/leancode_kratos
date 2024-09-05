// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'identity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
