import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:leancode_kratos_client/src/json_typedef.dart';
import 'package:leancode_kratos_client/src/login/api/login_success.dart';

part 'token_exchange_success.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class TokenExchangeSuccess with EquatableMixin {
  const TokenExchangeSuccess({
    this.sessionToken,
    required this.session,
  });

  factory TokenExchangeSuccess.fromJson(Json json) =>
      _$TokenExchangeSuccessFromJson(json);

  factory TokenExchangeSuccess.fromString(String string) =>
      TokenExchangeSuccess.fromJson(
        json.decode(string) as Json,
      );

  final String? sessionToken;
  final Session session;

  Json toJson() => _$TokenExchangeSuccessToJson(this);

  @override
  List<Object?> get props => [sessionToken, session];
}
