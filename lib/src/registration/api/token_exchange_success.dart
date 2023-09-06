import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leancode_kratos_client/src/login/api/login_success.dart';

part 'token_exchange_success.freezed.dart';
part 'token_exchange_success.g.dart';

@freezed
class TokenExchangeSuccess with _$TokenExchangeSuccess {
  const factory TokenExchangeSuccess({
    String? sessionToken,
    required Session session,
  }) = _TokenExchangeSuccess;

  factory TokenExchangeSuccess.fromJson(Map<String, dynamic> json) =>
      _$TokenExchangeSuccessFromJson(json);

  factory TokenExchangeSuccess.fromString(String string) =>
      TokenExchangeSuccess.fromJson(
        json.decode(string) as Map<String, dynamic>,
      );
}
