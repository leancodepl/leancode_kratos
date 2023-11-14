import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';

part 'login_error.g.dart';
part 'login_error.freezed.dart';

LoginErrorResponse loginErrorResponseFromJson(String str) =>
    LoginErrorResponse.fromJson(json.decode(str) as Map<String, dynamic>);

@freezed
class LoginErrorResponse with _$LoginErrorResponse {
  const factory LoginErrorResponse({
    required String id,
    required dynamic oauth2LoginChallenge,
    required String type,
    required DateTime expiresAt,
    required DateTime issuedAt,
    required String requestUrl,
    required UiDto ui,
    required DateTime createdAt,
    required DateTime updatedAt,
    required bool refresh,
    required String requestedAal,
  }) = _LoginErrorResponse;

  factory LoginErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginErrorResponseFromJson(json);
}
