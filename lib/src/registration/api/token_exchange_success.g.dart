// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_exchange_success.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TokenExchangeSuccess _$TokenExchangeSuccessFromJson(
        Map<String, dynamic> json) =>
    TokenExchangeSuccess(
      sessionToken: json['session_token'] as String?,
      session: Session.fromJson(json['session'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$TokenExchangeSuccessToJson(
        TokenExchangeSuccess instance) =>
    <String, dynamic>{
      'session_token': instance.sessionToken,
      'session': instance.session.toJson(),
    };
