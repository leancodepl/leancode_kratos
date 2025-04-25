// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout_flow_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LogoutFlowDto _$LogoutFlowDtoFromJson(Map<String, dynamic> json) =>
    LogoutFlowDto(
      logoutUrl: json['logout_url'] as String,
      logoutToken: json['logout_token'] as String,
    );

Map<String, dynamic> _$LogoutFlowDtoToJson(LogoutFlowDto instance) =>
    <String, dynamic>{
      'logout_url': instance.logoutUrl,
      'logout_token': instance.logoutToken,
    };
