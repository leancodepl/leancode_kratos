// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'registration.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegistrationFlow _$$_RegistrationFlowFromJson(Map<String, dynamic> json) =>
    _$_RegistrationFlow(
      id: json['id'] as String?,
      oauth2LoginChallenge: json['oauth2_login_challenge'] as String?,
      type: json['type'] as String?,
      expiresAt: json['expires_at'] == null
          ? null
          : DateTime.parse(json['expires_at'] as String),
      issuedAt: json['issued_at'] == null
          ? null
          : DateTime.parse(json['issued_at'] as String),
      requestUrl: json['request_url'] as String?,
      ui: json['ui'] == null
          ? null
          : Ui.fromJson(json['ui'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RegistrationFlowToJson(_$_RegistrationFlow instance) =>
    <String, dynamic>{
      'id': instance.id,
      'oauth2_login_challenge': instance.oauth2LoginChallenge,
      'type': instance.type,
      'expires_at': instance.expiresAt?.toIso8601String(),
      'issued_at': instance.issuedAt?.toIso8601String(),
      'request_url': instance.requestUrl,
      'ui': instance.ui?.toJson(),
    };

_$_Ui _$$_UiFromJson(Map<String, dynamic> json) => _$_Ui(
      action: json['action'] as String?,
      method: json['method'] as String?,
      nodes: (json['nodes'] as List<dynamic>?)
          ?.map((e) => Node.fromJson(e as Map<String, dynamic>))
          .toList(),
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UiToJson(_$_Ui instance) => <String, dynamic>{
      'action': instance.action,
      'method': instance.method,
      'nodes': instance.nodes?.map((e) => e.toJson()).toList(),
      'messages': instance.messages?.map((e) => e.toJson()).toList(),
    };

_$_Node _$$_NodeFromJson(Map<String, dynamic> json) => _$_Node(
      type: json['type'] as String?,
      group: json['group'] as String?,
      attributes: json['attributes'] == null
          ? null
          : Attributes.fromJson(json['attributes'] as Map<String, dynamic>),
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: json['meta'] == null
          ? null
          : Meta.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NodeToJson(_$_Node instance) => <String, dynamic>{
      'type': instance.type,
      'group': instance.group,
      'attributes': instance.attributes?.toJson(),
      'messages': instance.messages?.map((e) => e.toJson()).toList(),
      'meta': instance.meta?.toJson(),
    };

_$_Attributes _$$_AttributesFromJson(Map<String, dynamic> json) =>
    _$_Attributes(
      name: json['name'] as String?,
      type: json['type'] as String?,
      value: json['value'],
      required: json['required'] as bool?,
      disabled: json['disabled'] as bool?,
      nodeType: json['node_type'] as String?,
      autocomplete: json['autocomplete'] as String?,
    );

Map<String, dynamic> _$$_AttributesToJson(_$_Attributes instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'value': instance.value,
      'required': instance.required,
      'disabled': instance.disabled,
      'node_type': instance.nodeType,
      'autocomplete': instance.autocomplete,
    };

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      id: json['id'] as int?,
      text: json['text'] as String?,
      type: json['type'] as String?,
      context: json['context'] == null
          ? null
          : MessageContext.fromJson(json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'type': instance.type,
      'context': instance.context?.toJson(),
    };

_$_MessageContext _$$_MessageContextFromJson(Map<String, dynamic> json) =>
    _$_MessageContext(
      reason: json['reason'] as String?,
    );

Map<String, dynamic> _$$_MessageContextToJson(_$_MessageContext instance) =>
    <String, dynamic>{
      'reason': instance.reason,
    };

_$_Meta _$$_MetaFromJson(Map<String, dynamic> json) => _$_Meta(
      label: json['label'] == null
          ? null
          : Label.fromJson(json['label'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MetaToJson(_$_Meta instance) => <String, dynamic>{
      'label': instance.label?.toJson(),
    };

_$_Label _$$_LabelFromJson(Map<String, dynamic> json) => _$_Label(
      id: json['id'] as int?,
      text: json['text'] as String?,
      type: json['type'] as String?,
      context: json['context'] == null
          ? null
          : Context.fromJson(json['context'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LabelToJson(_$_Label instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'type': instance.type,
      'context': instance.context?.toJson(),
    };

_$_Context _$$_ContextFromJson(Map<String, dynamic> json) => _$_Context();

Map<String, dynamic> _$$_ContextToJson(_$_Context instance) =>
    <String, dynamic>{};
