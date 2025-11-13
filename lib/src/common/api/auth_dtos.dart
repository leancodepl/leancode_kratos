import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:leancode_kratos_client/src/common/domain/auth_flow_info.dart';
import 'package:leancode_kratos_client/src/utils/kratos_message.dart';
import 'package:leancode_kratos_client/src/utils/passkey_parsing.dart';

part 'auth_dtos.g.dart';

@JsonSerializable()
@CopyWith()
class AuthFlowDto with EquatableMixin {
  const AuthFlowDto({
    required this.id,
    this.oauth2LoginChallenge,
    required this.type,
    required this.expiresAt,
    required this.issuedAt,
    required this.requestUrl,
    this.returnTo,
    required this.ui,
    this.sessionTokenExchangeCode,
  });

  factory AuthFlowDto.fromString(String string) =>
      AuthFlowDto.fromJson(json.decode(string) as Map<String, dynamic>);

  factory AuthFlowDto.fromJson(Map<String, dynamic> json) =>
      _$AuthFlowDtoFromJson(json);

  final String id;
  final String? oauth2LoginChallenge;
  final String type;
  final DateTime expiresAt;
  final DateTime issuedAt;
  final String requestUrl;
  final String? returnTo;
  final UiDto ui;
  final String? sessionTokenExchangeCode;

  Map<String, dynamic> toJson() => _$AuthFlowDtoToJson(this);

  String? get csrfToken =>
      ui.nodes
              .firstWhereOrNull((node) => node.attributes.name == 'csrf_token')
              ?.attributes
              .value
          as String?;

  AuthFlowInfo get info {
    final passkeyRequest =
        ui.nodes
                .firstWhereOrNull(
                  (node) => node.attributes.name == 'passkey_challenge',
                )
                ?.attributes
                .value
            as String?;

    final passkeyCreation =
        ui.nodes
                .firstWhereOrNull(
                  (node) => node.attributes.name == 'passkey_create_data',
                )
                ?.attributes
                .value
            as String?;

    return AuthFlowInfo(
      id: id,
      expiresAt: expiresAt,
      csrfToken: csrfToken,
      sessionTokenExchangeCode: sessionTokenExchangeCode,
      passkeyRequestOptions: passkeyRequest != null
          ? getPasskeyOptionsFromString(passkeyRequest)
          : null,
      passkeyCreationOptions: passkeyCreation != null
          ? getPasskeyOptionsFromString(passkeyCreation)
          : null,
    );
  }

  @override
  List<Object?> get props => [
    id,
    oauth2LoginChallenge,
    type,
    expiresAt,
    issuedAt,
    requestUrl,
    returnTo,
    ui,
    sessionTokenExchangeCode,
  ];
}

@JsonSerializable()
class UiDto with EquatableMixin {
  const UiDto({
    required this.action,
    required this.method,
    required this.nodes,
    this.messages,
  });

  factory UiDto.fromJson(Map<String, dynamic> json) => _$UiDtoFromJson(json);

  final String action;
  final String method;
  final List<NodeDto> nodes;
  final List<MessageDto>? messages;

  Map<String, dynamic> toJson() => _$UiDtoToJson(this);

  List<KratosMessage> getGeneralMessages() {
    return (messages ?? [])
        .map((message) => message.toKratosMessage())
        .toList();
  }

  List<(String, KratosMessage)> getFieldMessages() {
    return nodes.expand((node) => node.getKratosMessages()).toList();
  }

  @override
  List<Object?> get props => [action, method, nodes, messages];
}

@JsonSerializable()
class NodeDto with EquatableMixin {
  const NodeDto({
    required this.type,
    required this.group,
    required this.attributes,
    required this.messages,
    required this.meta,
  });

  factory NodeDto.fromJson(Map<String, dynamic> json) =>
      _$NodeDtoFromJson(json);

  final String type;
  final String group;
  final AttributesDto attributes;
  final List<MessageDto> messages;
  final MetaDto meta;

  Map<String, dynamic> toJson() => _$NodeDtoToJson(this);

  List<(String, KratosMessage)> getKratosMessages() {
    final name = attributes.name;

    if (name == null) {
      return [];
    }

    return messages
        .map((message) => (name, message.toKratosMessage()))
        .toList();
  }

  @override
  List<Object?> get props => [type, group, attributes, messages, meta];
}

@JsonSerializable()
class AttributesDto with EquatableMixin {
  const AttributesDto({
    this.name,
    this.type,
    this.value,
    this.required,
    this.disabled,
    this.nodeType,
    this.autocomplete,
  });

  factory AttributesDto.fromJson(Map<String, dynamic> json) =>
      _$AttributesDtoFromJson(json);

  final String? name;
  final String? type;
  final dynamic value;
  final bool? required;
  final bool? disabled;
  final String? nodeType;
  final String? autocomplete;

  Map<String, dynamic> toJson() => _$AttributesDtoToJson(this);

  @override
  List<Object?> get props => [
    name,
    type,
    value,
    required,
    disabled,
    nodeType,
    autocomplete,
  ];
}

@JsonSerializable()
class MessageDto with EquatableMixin {
  const MessageDto({
    required this.id,
    required this.text,
    required this.type,
    this.context,
  });

  factory MessageDto.fromJson(Map<String, dynamic> json) =>
      _$MessageDtoFromJson(json);

  final int id;
  final String text;
  final String type;
  final ContextParameters? context;

  Map<String, dynamic> toJson() => _$MessageDtoToJson(this);

  KratosMessage toKratosMessage() => KratosMessage.forId(id, context);

  @override
  List<Object?> get props => [id, text, type, context];
}

@JsonSerializable()
class MetaDto with EquatableMixin {
  const MetaDto({this.label});

  factory MetaDto.fromJson(Map<String, dynamic> json) =>
      _$MetaDtoFromJson(json);

  final LabelDto? label;

  Map<String, dynamic> toJson() => _$MetaDtoToJson(this);

  @override
  List<Object?> get props => [label];
}

@JsonSerializable()
class LabelDto with EquatableMixin {
  const LabelDto({
    required this.id,
    required this.text,
    required this.type,
    this.context,
  });

  factory LabelDto.fromJson(Map<String, dynamic> json) =>
      _$LabelDtoFromJson(json);

  final int id;
  final String text;
  final String type;
  final Map<String, dynamic>? context;

  Map<String, dynamic> toJson() => _$LabelDtoToJson(this);

  @override
  List<Object?> get props => [id, text, type, context];
}
