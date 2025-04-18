// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthFlowDtoImpl _$$AuthFlowDtoImplFromJson(Map<String, dynamic> json) =>
    _$AuthFlowDtoImpl(
      id: json['id'] as String,
      oauth2LoginChallenge: json['oauth2_login_challenge'] as String?,
      type: json['type'] as String,
      expiresAt: DateTime.parse(json['expires_at'] as String),
      issuedAt: DateTime.parse(json['issued_at'] as String),
      requestUrl: json['request_url'] as String,
      returnTo: json['return_to'] as String?,
      ui: UiDto.fromJson(json['ui'] as Map<String, dynamic>),
      sessionTokenExchangeCode: json['session_token_exchange_code'] as String?,
    );

Map<String, dynamic> _$$AuthFlowDtoImplToJson(_$AuthFlowDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'oauth2_login_challenge': instance.oauth2LoginChallenge,
      'type': instance.type,
      'expires_at': instance.expiresAt.toIso8601String(),
      'issued_at': instance.issuedAt.toIso8601String(),
      'request_url': instance.requestUrl,
      'return_to': instance.returnTo,
      'ui': instance.ui.toJson(),
      'session_token_exchange_code': instance.sessionTokenExchangeCode,
    };

_$UiDtoImpl _$$UiDtoImplFromJson(Map<String, dynamic> json) => _$UiDtoImpl(
      action: json['action'] as String,
      method: json['method'] as String,
      nodes: (json['nodes'] as List<dynamic>)
          .map((e) => NodeDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) => MessageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UiDtoImplToJson(_$UiDtoImpl instance) =>
    <String, dynamic>{
      'action': instance.action,
      'method': instance.method,
      'nodes': instance.nodes.map((e) => e.toJson()).toList(),
      'messages': instance.messages?.map((e) => e.toJson()).toList(),
    };

_$NodeDtoImpl _$$NodeDtoImplFromJson(Map<String, dynamic> json) =>
    _$NodeDtoImpl(
      type: json['type'] as String,
      group: json['group'] as String,
      attributes:
          AttributesDto.fromJson(json['attributes'] as Map<String, dynamic>),
      messages: (json['messages'] as List<dynamic>)
          .map((e) => MessageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: MetaDto.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$NodeDtoImplToJson(_$NodeDtoImpl instance) =>
    <String, dynamic>{
      'type': instance.type,
      'group': instance.group,
      'attributes': instance.attributes.toJson(),
      'messages': instance.messages.map((e) => e.toJson()).toList(),
      'meta': instance.meta.toJson(),
    };

_$AttributesDtoImpl _$$AttributesDtoImplFromJson(Map<String, dynamic> json) =>
    _$AttributesDtoImpl(
      name: json['name'] as String?,
      type: json['type'] as String?,
      value: json['value'],
      required: json['required'] as bool?,
      disabled: json['disabled'] as bool?,
      nodeType: json['node_type'] as String?,
      autocomplete: json['autocomplete'] as String?,
    );

Map<String, dynamic> _$$AttributesDtoImplToJson(_$AttributesDtoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'value': instance.value,
      'required': instance.required,
      'disabled': instance.disabled,
      'node_type': instance.nodeType,
      'autocomplete': instance.autocomplete,
    };

_$MessageDtoImpl _$$MessageDtoImplFromJson(Map<String, dynamic> json) =>
    _$MessageDtoImpl(
      id: (json['id'] as num).toInt(),
      text: json['text'] as String,
      type: json['type'] as String,
      context: json['context'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$MessageDtoImplToJson(_$MessageDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'type': instance.type,
      'context': instance.context,
    };

_$MetaDtoImpl _$$MetaDtoImplFromJson(Map<String, dynamic> json) =>
    _$MetaDtoImpl(
      label: json['label'] == null
          ? null
          : LabelDto.fromJson(json['label'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MetaDtoImplToJson(_$MetaDtoImpl instance) =>
    <String, dynamic>{
      'label': instance.label?.toJson(),
    };

_$LabelDtoImpl _$$LabelDtoImplFromJson(Map<String, dynamic> json) =>
    _$LabelDtoImpl(
      id: (json['id'] as num).toInt(),
      text: json['text'] as String,
      type: json['type'] as String,
      context: json['context'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$LabelDtoImplToJson(_$LabelDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'type': instance.type,
      'context': instance.context,
    };
