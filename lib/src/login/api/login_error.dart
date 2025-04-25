import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';
import 'package:leancode_kratos_client/src/json_typedef.dart';

part 'login_error.g.dart';

LoginErrorResponse loginErrorResponseFromJson(String str) =>
    LoginErrorResponse.fromJson(json.decode(str) as Json);

class LoginErrorResponse with EquatableMixin {
  const LoginErrorResponse({
    required this.id,
    required this.oauth2LoginChallenge,
    required this.type,
    required this.expiresAt,
    required this.issuedAt,
    required this.requestUrl,
    required this.ui,
    required this.createdAt,
    required this.updatedAt,
    required this.refresh,
    required this.requestedAal,
  });

  factory LoginErrorResponse.fromJson(Json json) =>
      _$LoginErrorResponseFromJson(json);

  final String id;
  final dynamic oauth2LoginChallenge;
  final String type;
  final DateTime expiresAt;
  final DateTime issuedAt;
  final String requestUrl;
  final UiDto ui;
  final DateTime createdAt;
  final DateTime updatedAt;
  final bool refresh;
  final String requestedAal;

  Json toJson() => _$LoginErrorResponseToJson(this);

  @override
  List<Object?> get props => [
        id,
        oauth2LoginChallenge,
        type,
        expiresAt,
        issuedAt,
        requestUrl,
        ui,
        createdAt,
        updatedAt,
        refresh,
        requestedAal,
      ];
}
