import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';

part 'login_error.g.dart';

LoginErrorResponse loginErrorResponseFromJson(String str) =>
    LoginErrorResponse.fromJson(json.decode(str) as Map<String, dynamic>);

@JsonSerializable(fieldRename: FieldRename.snake)
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

  factory LoginErrorResponse.fromJson(Map<String, dynamic> json) =>
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

  Map<String, dynamic> toJson() => _$LoginErrorResponseToJson(this);

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
