import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'registration.freezed.dart';
part 'registration.g.dart';

RegistrationFlow registrationFlowFromJson(String str) =>
    RegistrationFlow.fromJson(json.decode(str) as Map<String, dynamic>);

@freezed
class RegistrationFlow with _$RegistrationFlow {
  const factory RegistrationFlow({
    String? id,
    String? oauth2LoginChallenge,
    String? type,
    DateTime? expiresAt,
    DateTime? issuedAt,
    String? requestUrl,
    Ui? ui,
  }) = _RegistrationFlow;

  factory RegistrationFlow.fromJson(Map<String, dynamic> json) =>
      _$RegistrationFlowFromJson(json);
}

@freezed
class Ui with _$Ui {
  const factory Ui({
    String? action,
    String? method,
    List<Node>? nodes,
    List<Message>? messages,
  }) = _Ui;

  const Ui._();

  factory Ui.fromJson(Map<String, dynamic> json) => _$UiFromJson(json);

  String? get loginMethod {
    return nodes
        ?.map(
          (node) => switch (node.attributes) {
            Attributes(
              name: 'method',
              value: final String attributeValue,
            ) =>
              attributeValue,
            _ => null,
          },
        )
        .firstOrNull;
  }
}

@freezed
class Node with _$Node {
  const factory Node({
    String? type,
    String? group,
    Attributes? attributes,
    List<Message>? messages,
    Meta? meta,
  }) = _Node;

  factory Node.fromJson(Map<String, dynamic> json) => _$NodeFromJson(json);
}

@freezed
class Attributes with _$Attributes {
  const factory Attributes({
    String? name,
    String? type,
    dynamic value,
    bool? required,
    bool? disabled,
    String? nodeType,
    String? autocomplete,
  }) = _Attributes;

  factory Attributes.fromJson(Map<String, dynamic> json) =>
      _$AttributesFromJson(json);
}

@freezed
class Message with _$Message {
  const factory Message({
    int? id,
    String? text,
    String? type,
    MessageContext? context,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}

@freezed
class MessageContext with _$MessageContext {
  const factory MessageContext({
    String? reason,
  }) = _MessageContext;

  factory MessageContext.fromJson(Map<String, dynamic> json) =>
      _$MessageContextFromJson(json);
}

@freezed
class Meta with _$Meta {
  const factory Meta({
    Label? label,
  }) = _Meta;

  factory Meta.fromJson(Map<String, dynamic> json) => _$MetaFromJson(json);
}

@freezed
class Label with _$Label {
  const factory Label({
    int? id,
    String? text,
    String? type,
    Context? context,
  }) = _Label;

  factory Label.fromJson(Map<String, dynamic> json) => _$LabelFromJson(json);
}

@freezed
class Context with _$Context {
  const factory Context() = _Context;

  factory Context.fromJson(Map<String, dynamic> json) =>
      _$ContextFromJson(json);
}
