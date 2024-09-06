// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_exchange_success.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TokenExchangeSuccessImpl _$$TokenExchangeSuccessImplFromJson(
        Map<String, dynamic> json) =>
    _$TokenExchangeSuccessImpl(
      sessionToken: json['session_token'] as String?,
      session: Session.fromJson(json['session'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$TokenExchangeSuccessImplToJson(
        _$TokenExchangeSuccessImpl instance) =>
    <String, dynamic>{
      'session_token': instance.sessionToken,
      'session': instance.session.toJson(),
    };
