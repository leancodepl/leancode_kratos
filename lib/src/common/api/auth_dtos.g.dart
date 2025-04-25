// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_dtos.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$AuthFlowDtoCWProxy {
  AuthFlowDto id(String id);

  AuthFlowDto oauth2LoginChallenge(String? oauth2LoginChallenge);

  AuthFlowDto type(String type);

  AuthFlowDto expiresAt(DateTime expiresAt);

  AuthFlowDto issuedAt(DateTime issuedAt);

  AuthFlowDto requestUrl(String requestUrl);

  AuthFlowDto returnTo(String? returnTo);

  AuthFlowDto ui(UiDto ui);

  AuthFlowDto sessionTokenExchangeCode(String? sessionTokenExchangeCode);

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthFlowDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthFlowDto(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthFlowDto call({
    String id,
    String? oauth2LoginChallenge,
    String type,
    DateTime expiresAt,
    DateTime issuedAt,
    String requestUrl,
    String? returnTo,
    UiDto ui,
    String? sessionTokenExchangeCode,
  });
}

/// Proxy class for `copyWith` functionality. This is a callable class and can be used as follows: `instanceOfAuthFlowDto.copyWith(...)`. Additionally contains functions for specific fields e.g. `instanceOfAuthFlowDto.copyWith.fieldName(...)`
class _$AuthFlowDtoCWProxyImpl implements _$AuthFlowDtoCWProxy {
  const _$AuthFlowDtoCWProxyImpl(this._value);

  final AuthFlowDto _value;

  @override
  AuthFlowDto id(String id) => this(id: id);

  @override
  AuthFlowDto oauth2LoginChallenge(String? oauth2LoginChallenge) =>
      this(oauth2LoginChallenge: oauth2LoginChallenge);

  @override
  AuthFlowDto type(String type) => this(type: type);

  @override
  AuthFlowDto expiresAt(DateTime expiresAt) => this(expiresAt: expiresAt);

  @override
  AuthFlowDto issuedAt(DateTime issuedAt) => this(issuedAt: issuedAt);

  @override
  AuthFlowDto requestUrl(String requestUrl) => this(requestUrl: requestUrl);

  @override
  AuthFlowDto returnTo(String? returnTo) => this(returnTo: returnTo);

  @override
  AuthFlowDto ui(UiDto ui) => this(ui: ui);

  @override
  AuthFlowDto sessionTokenExchangeCode(String? sessionTokenExchangeCode) =>
      this(sessionTokenExchangeCode: sessionTokenExchangeCode);

  @override

  /// This function **does support** nullification of nullable fields. All `null` values passed to `non-nullable` fields will be ignored. You can also use `AuthFlowDto(...).copyWith.fieldName(...)` to override fields one at a time with nullification support.
  ///
  /// Usage
  /// ```dart
  /// AuthFlowDto(...).copyWith(id: 12, name: "My name")
  /// ````
  AuthFlowDto call({
    Object? id = const $CopyWithPlaceholder(),
    Object? oauth2LoginChallenge = const $CopyWithPlaceholder(),
    Object? type = const $CopyWithPlaceholder(),
    Object? expiresAt = const $CopyWithPlaceholder(),
    Object? issuedAt = const $CopyWithPlaceholder(),
    Object? requestUrl = const $CopyWithPlaceholder(),
    Object? returnTo = const $CopyWithPlaceholder(),
    Object? ui = const $CopyWithPlaceholder(),
    Object? sessionTokenExchangeCode = const $CopyWithPlaceholder(),
  }) {
    return AuthFlowDto(
      id: id == const $CopyWithPlaceholder()
          ? _value.id
          // ignore: cast_nullable_to_non_nullable
          : id as String,
      oauth2LoginChallenge: oauth2LoginChallenge == const $CopyWithPlaceholder()
          ? _value.oauth2LoginChallenge
          // ignore: cast_nullable_to_non_nullable
          : oauth2LoginChallenge as String?,
      type: type == const $CopyWithPlaceholder()
          ? _value.type
          // ignore: cast_nullable_to_non_nullable
          : type as String,
      expiresAt: expiresAt == const $CopyWithPlaceholder()
          ? _value.expiresAt
          // ignore: cast_nullable_to_non_nullable
          : expiresAt as DateTime,
      issuedAt: issuedAt == const $CopyWithPlaceholder()
          ? _value.issuedAt
          // ignore: cast_nullable_to_non_nullable
          : issuedAt as DateTime,
      requestUrl: requestUrl == const $CopyWithPlaceholder()
          ? _value.requestUrl
          // ignore: cast_nullable_to_non_nullable
          : requestUrl as String,
      returnTo: returnTo == const $CopyWithPlaceholder()
          ? _value.returnTo
          // ignore: cast_nullable_to_non_nullable
          : returnTo as String?,
      ui: ui == const $CopyWithPlaceholder()
          ? _value.ui
          // ignore: cast_nullable_to_non_nullable
          : ui as UiDto,
      sessionTokenExchangeCode:
          sessionTokenExchangeCode == const $CopyWithPlaceholder()
              ? _value.sessionTokenExchangeCode
              // ignore: cast_nullable_to_non_nullable
              : sessionTokenExchangeCode as String?,
    );
  }
}

extension $AuthFlowDtoCopyWith on AuthFlowDto {
  /// Returns a callable class that can be used as follows: `instanceOfAuthFlowDto.copyWith(...)` or like so:`instanceOfAuthFlowDto.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$AuthFlowDtoCWProxy get copyWith => _$AuthFlowDtoCWProxyImpl(this);
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AuthFlowDto _$AuthFlowDtoFromJson(Map<String, dynamic> json) => AuthFlowDto(
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

Map<String, dynamic> _$AuthFlowDtoToJson(AuthFlowDto instance) =>
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

UiDto _$UiDtoFromJson(Map<String, dynamic> json) => UiDto(
      action: json['action'] as String,
      method: json['method'] as String,
      nodes: (json['nodes'] as List<dynamic>)
          .map((e) => NodeDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) => MessageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$UiDtoToJson(UiDto instance) => <String, dynamic>{
      'action': instance.action,
      'method': instance.method,
      'nodes': instance.nodes.map((e) => e.toJson()).toList(),
      'messages': instance.messages?.map((e) => e.toJson()).toList(),
    };

NodeDto _$NodeDtoFromJson(Map<String, dynamic> json) => NodeDto(
      type: json['type'] as String,
      group: json['group'] as String,
      attributes:
          AttributesDto.fromJson(json['attributes'] as Map<String, dynamic>),
      messages: (json['messages'] as List<dynamic>)
          .map((e) => MessageDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      meta: MetaDto.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NodeDtoToJson(NodeDto instance) => <String, dynamic>{
      'type': instance.type,
      'group': instance.group,
      'attributes': instance.attributes.toJson(),
      'messages': instance.messages.map((e) => e.toJson()).toList(),
      'meta': instance.meta.toJson(),
    };

AttributesDto _$AttributesDtoFromJson(Map<String, dynamic> json) =>
    AttributesDto(
      name: json['name'] as String?,
      type: json['type'] as String?,
      value: json['value'],
      required: json['required'] as bool?,
      disabled: json['disabled'] as bool?,
      nodeType: json['node_type'] as String?,
      autocomplete: json['autocomplete'] as String?,
    );

Map<String, dynamic> _$AttributesDtoToJson(AttributesDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'value': instance.value,
      'required': instance.required,
      'disabled': instance.disabled,
      'node_type': instance.nodeType,
      'autocomplete': instance.autocomplete,
    };

MessageDto _$MessageDtoFromJson(Map<String, dynamic> json) => MessageDto(
      id: (json['id'] as num).toInt(),
      text: json['text'] as String,
      type: json['type'] as String,
      context: json['context'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$MessageDtoToJson(MessageDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'type': instance.type,
      'context': instance.context,
    };

MetaDto _$MetaDtoFromJson(Map<String, dynamic> json) => MetaDto(
      label: json['label'] == null
          ? null
          : LabelDto.fromJson(json['label'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$MetaDtoToJson(MetaDto instance) => <String, dynamic>{
      'label': instance.label?.toJson(),
    };

LabelDto _$LabelDtoFromJson(Map<String, dynamic> json) => LabelDto(
      id: (json['id'] as num).toInt(),
      text: json['text'] as String,
      type: json['type'] as String,
      context: json['context'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$LabelDtoToJson(LabelDto instance) => <String, dynamic>{
      'id': instance.id,
      'text': instance.text,
      'type': instance.type,
      'context': instance.context,
    };
