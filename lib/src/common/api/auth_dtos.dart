import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leancode_kratos_client/src/common/domain/auth_flow_info.dart';

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

  AuthFlowInfo get info => AuthFlowInfo(
        id: id,
        expiresAt: expiresAt,
        csrfToken: csrfToken,
        sessionTokenExchangeCode: sessionTokenExchangeCode,
      );
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

  String? get loginMethod {
    return nodes
        .map(
          (node) => switch (node.attributes) {
            AttributesDto(
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
}

@freezed
class MessageContextDto with _$MessageContextDto {
  const factory MessageContextDto({
    String? reason,
  }) = _MessageContextDto;

  factory MessageContextDto.fromJson(Map<String, dynamic> json) =>
      _$MessageContextDtoFromJson(json);
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
    ContextDto? context,
  }) = _LabelDto;

  factory LabelDto.fromJson(Map<String, dynamic> json) =>
      _$LabelDtoFromJson(json);
}

@freezed
class ContextDto with _$ContextDto {
  const factory ContextDto() = _ContextDto;

  factory ContextDto.fromJson(Map<String, dynamic> json) =>
      _$ContextDtoFromJson(json);
}
