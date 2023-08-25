// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AuthFlowDto _$$_AuthFlowDtoFromJson(Map<String, dynamic> json) =>
    _$_AuthFlowDto(
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

Map<String, dynamic> _$$_AuthFlowDtoToJson(_$_AuthFlowDto instance) =>
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

_$_UiDto _$$_UiDtoFromJson(Map<String, dynamic> json) => _$_UiDto(
      action: json['action'] as String,
      method: json['method'] as String,
      nodes: (json['nodes'] as List<dynamic>)
          .map((e) => NodeDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) => MessageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UiDtoToJson(_$_UiDto instance) => <String, dynamic>{
      'action': instance.action,
      'method': instance.method,
      'nodes': instance.nodes.map((e) => e.toJson()).toList(),
      'messages': instance.messages?.map((e) => e.toJson()).toList(),
    };

_$_NodeDto _$$_NodeDtoFromJson(Map<String, dynamic> json) => _$_NodeDto(
      type: json['type'] as String,
      group: json['group'] as String,
      attributes:
          AttributesDto.fromJson(json['attributes'] as Map<String, dynamic>),
      messages: (json['messages'] as List<dynamic>)
          .map((e) => MessageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: MetaDto.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NodeDtoToJson(_$_NodeDto instance) =>
    <String, dynamic>{
      'type': instance.type,
      'group': instance.group,
      'attributes': instance.attributes.toJson(),
      'messages': instance.messages.map((e) => e.toJson()).toList(),
      'meta': instance.meta.toJson(),
    };

_$_AttributesDto _$$_AttributesDtoFromJson(Map<String, dynamic> json) =>
    _$_AttributesDto(
      name: json['name'] as String?,
      type: json['type'] as String?,
      value: json['value'],
      required: json['required'] as bool?,
      disabled: json['disabled'] as bool?,
      nodeType: json['node_type'] as String?,
      autocomplete: json['autocomplete'] as String?,
    );

Map<String, dynamic> _$$_AttributesDtoToJson(_$_AttributesDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'value': instance.value,
      'required': instance.required,
      'disabled': instance.disabled,
      'node_type': instance.nodeType,
      'autocomplete': instance.autocomplete,
    };

_$_MessageDto _$$_MessageDtoFromJson(Map<String, dynamic> json) =>
    _$_MessageDto(
      id: json['id'] as int,
      text: json['text'] as String,
      type: json['type'] as String,
      context: json['context'] == null
          ? null
          : MessageContextDto.fromJson(json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MessageDtoToJson(_$_MessageDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'type': instance.type,
      'context': instance.context?.toJson(),
    };

_$_MessageContextDto _$$_MessageContextDtoFromJson(Map<String, dynamic> json) =>
    _$_MessageContextDto(
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$$_MessageContextDtoToJson(
        _$_MessageContextDto instance) =>
    <String, dynamic>{
      'reason': instance.reason,
    };

_$_MetaDto _$$_MetaDtoFromJson(Map<String, dynamic> json) => _$_MetaDto(
      label: json['label'] == null
          ? null
          : LabelDto.fromJson(json['label'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MetaDtoToJson(_$_MetaDto instance) =>
    <String, dynamic>{
      'label': instance.label?.toJson(),
    };

_$_LabelDto _$$_LabelDtoFromJson(Map<String, dynamic> json) => _$_LabelDto(
      id: json['id'] as int,
      text: json['text'] as String,
      type: json['type'] as String,
      context: json['context'] == null
          ? null
          : ContextDto.fromJson(json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LabelDtoToJson(_$_LabelDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'type': instance.type,
      'context': instance.context?.toJson(),
    };

_$_ContextDto _$$_ContextDtoFromJson(Map<String, dynamic> json) =>
    _$_ContextDto();

Map<String, dynamic> _$$_ContextDtoToJson(_$_ContextDto instance) =>
    <String, dynamic>{};
