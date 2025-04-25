import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:leancode_kratos_client/src/login/api/login_success.dart';

part 'token_exchange_success.g.dart';

@JsonSerializable()
class TokenExchangeSuccess with EquatableMixin {
  const TokenExchangeSuccess({
    this.sessionToken,
    required this.session,
  });

  factory TokenExchangeSuccess.fromJson(Map<String, dynamic> json) =>
      _$TokenExchangeSuccessFromJson(json);

  factory TokenExchangeSuccess.fromString(String string) =>
      TokenExchangeSuccess.fromJson(
        json.decode(string) as Map<String, dynamic>,
      );

  final String? sessionToken;
  final Session session;

  Map<String, dynamic> toJson() => _$TokenExchangeSuccessToJson(this);

  @override
  List<Object?> get props => [sessionToken, session];
}
