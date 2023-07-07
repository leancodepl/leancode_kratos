import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_error.g.dart';
part 'login_error.freezed.dart';

LoginErrorResponse loginErrorResponseFromJson(String str) =>
    LoginErrorResponse.fromJson(json.decode(str));

@freezed
class LoginErrorResponse with _$LoginErrorResponse {
  const factory LoginErrorResponse({
    required String id,
    required dynamic oauth2LoginChallenge,
    required String type,
    required DateTime expiresAt,
    required DateTime issuedAt,
    required String requestUrl,
    required Ui ui,
    required DateTime createdAt,
    required DateTime updatedAt,
    required bool refresh,
    required String requestedAal,
  }) = _LoginErrorResponse;

  factory LoginErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginErrorResponseFromJson(json);
}

@freezed
class Ui with _$Ui {
  const factory Ui({
    required String action,
    required String method,
    required List<Node> nodes,
    required List<Message> messages,
  }) = _Ui;

  factory Ui.fromJson(Map<String, dynamic> json) => _$UiFromJson(json);
}

@freezed
class Message with _$Message {
  const factory Message({
    required int id,
    required String text,
    required String type,
    required Context context,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

@freezed
class Context with _$Context {
  const factory Context() = _Context;

  factory Context.fromJson(Map<String, dynamic> json) =>
      _$ContextFromJson(json);
}

@freezed
class Node with _$Node {
  const factory Node({
    required String type,
    required String group,
    required Attributes attributes,
    required List<dynamic> messages,
    required Meta meta,
  }) = _Node;

  factory Node.fromJson(Map<String, dynamic> json) => _$NodeFromJson(json);
}

@freezed
class Attributes with _$Attributes {
  const factory Attributes({
    required String name,
    required String type,
    required String value,
    required bool required,
    required bool disabled,
    required String nodeType,
    required String autocomplete,
  }) = _Attributes;

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    required Message label,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}
