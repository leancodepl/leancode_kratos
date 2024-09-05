// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'continue_with.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
