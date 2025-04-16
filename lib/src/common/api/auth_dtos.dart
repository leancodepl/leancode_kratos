import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leancode_kratos_client/src/common/domain/auth_flow_info.dart';
import 'package:leancode_kratos_client/src/utils/kratos_message.dart';
import 'package:leancode_kratos_client/src/utils/passkey_parsing.dart';

part 'auth_dtos.freezed.dart';
part 'auth_dtos.g.dart';

@freezed
class AuthFlowDto with _$AuthFlowDto {
  const factory AuthFlowDto({
    required String id,
    String? oauth2LoginChallenge,
    required String type,
    required DateTime expiresAt,
    required DateTime issuedAt,
    required String requestUrl,
    String? returnTo,
    required UiDto ui,
    String? sessionTokenExchangeCode,
  }) = _AuthFlowDto;

  factory AuthFlowDto.fromString(String string) =>
      AuthFlowDto.fromJson(json.decode(string) as Map<String, dynamic>);

  factory AuthFlowDto.fromJson(Map<String, dynamic> json) =>
      _$AuthFlowDtoFromJson(json);

  const AuthFlowDto._();

  String? get csrfToken => ui.nodes
      .firstWhereOrNull((node) => node.attributes.name == 'csrf_token')
      ?.attributes
      .value as String?;

  AuthFlowInfo get info {
    final passkeyRequest = ui.nodes
        .firstWhereOrNull((node) => node.attributes.name == 'passkey_challenge')
        ?.attributes
        .value as String?;

    final passkeyCreation = ui.nodes
        .firstWhereOrNull(
          (node) => node.attributes.name == 'passkey_create_data',
        )
        ?.attributes
        .value as String?;

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
}

@freezed
class UiDto with _$UiDto {
  const factory UiDto({
    required String action,
    required String method,
    required List<NodeDto> nodes,
    List<MessageDto>? messages,
  }) = _UiDto;

  const UiDto._();

  factory UiDto.fromJson(Map<String, dynamic> json) => _$UiDtoFromJson(json);

  List<KratosMessage> getGeneralMessages() {
    return (messages ?? [])
        .map((message) => message.toKratosMessage())
        .toList();
  }

  List<(String, KratosMessage)> getFieldMessages() {
    return nodes.expand((node) => node.getKratosMessages()).toList();
  }
}

@freezed
class NodeDto with _$NodeDto {
  const factory NodeDto({
    required String type,
    required String group,
    required AttributesDto attributes,
    required List<MessageDto> messages,
    required MetaDto meta,
  }) = _NodeDto;

  factory NodeDto.fromJson(Map<String, dynamic> json) =>
      _$NodeDtoFromJson(json);

  const NodeDto._();

  List<(String, KratosMessage)> getKratosMessages() {
    final name = attributes.name;

    if (name == null) {
      return [];
    }

    return messages
        .map((message) => (name, message.toKratosMessage()))
        .toList();
  }
}

@freezed
class AttributesDto with _$AttributesDto {
  const factory AttributesDto({
    String? name,
    String? type,
    dynamic value,
    bool? required,
    bool? disabled,
    String? nodeType,
    String? autocomplete,
  }) = _AttributesDto;

  factory AttributesDto.fromJson(Map<String, dynamic> json) =>
      _$AttributesDtoFromJson(json);
}

@freezed
class MessageDto with _$MessageDto {
  const factory MessageDto({
    required int id,
    required String text,
    required String type,
    MessageContextDto? context,
  }) = _MessageDto;

  factory MessageDto.fromJson(Map<String, dynamic> json) =>
      _$MessageDtoFromJson(json);

  const MessageDto._();

  KratosMessage toKratosMessage() => KratosMessage.forIdWithParameters(
        id,
        contextParameters: context?.parametersMap,
      );
}

@JsonSerializable(converters: [MessageContextConverter()])
@freezed
class MessageContextDto with _$MessageContextDto {
  const factory MessageContextDto({
    Map<String, String>? parametersMap,
  }) = _MessageContextDto;

  factory MessageContextDto.fromJson(Map<String, dynamic> json) =>
      _$MessageContextDtoFromJson(json);
}

class MessageContextConverter
    implements JsonConverter<Map<String, String>?, Map<String, dynamic>?> {
  const MessageContextConverter();

  @override
  Map<String, String>? fromJson(Map<String, dynamic>? json) {
    if (json == null) {
      return null;
    }

    final result = <String, String>{};

    json.forEach((key, value) {
      if (value is String) {
        result[key] = value;
      } else if (value is List) {
        result[key] = value.map((e) => e.toString()).join(', ');
      }
    });

    return result;
  }

  @override
  Map<String, dynamic>? toJson(Map<String, String>? data) => data;
}

@freezed
class MetaDto with _$MetaDto {
  const factory MetaDto({
    LabelDto? label,
  }) = _MetaDto;

  factory MetaDto.fromJson(Map<String, dynamic> json) =>
      _$MetaDtoFromJson(json);
}

@freezed
class LabelDto with _$LabelDto {
  const factory LabelDto({
    required int id,
    required String text,
    required String type,
    Map<String, dynamic>? context,
  }) = _LabelDto;

  factory LabelDto.fromJson(Map<String, dynamic> json) =>
      _$LabelDtoFromJson(json);
}
