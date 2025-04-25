// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passkey.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Passkey _$PasskeyFromJson(Map<String, dynamic> json) => Passkey(
      id: json['id'] as String,
      addedAt: DateTime.parse(json['added_at'] as String),
      displayName: json['display_name'] as String,
    );

Map<String, dynamic> _$PasskeyToJson(Passkey instance) => <String, dynamic>{
      'id': instance.id,
      'added_at': instance.addedAt.toIso8601String(),
      'display_name': instance.displayName,
    };
