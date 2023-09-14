// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_exchange_success.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenExchangeSuccess _$$_TokenExchangeSuccessFromJson(
        Map<String, dynamic> json) =>
    _$_TokenExchangeSuccess(
      sessionToken: json['session_token'] as String?,
      session: Session.fromJson(json['session'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TokenExchangeSuccessToJson(
        _$_TokenExchangeSuccess instance) =>
    <String, dynamic>{
      'session_token': instance.sessionToken,
      'session': instance.session.toJson(),
    };
