// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verifiable_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
