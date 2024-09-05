// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recovery_address.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
