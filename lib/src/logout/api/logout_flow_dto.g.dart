// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'logout_flow_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LogoutFlowDtoImpl _$$LogoutFlowDtoImplFromJson(Map<String, dynamic> json) =>
    _$LogoutFlowDtoImpl(
      logoutUrl: json['logout_url'] as String,
      logoutToken: json['logout_token'] as String,
    );

Map<String, dynamic> _$$LogoutFlowDtoImplToJson(_$LogoutFlowDtoImpl instance) =>
    <String, dynamic>{
      'logout_url': instance.logoutUrl,
      'logout_token': instance.logoutToken,
    };
