// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AuthFlowDto _$AuthFlowDtoFromJson(Map<String, dynamic> json) {
  return _AuthFlowDto.fromJson(json);
}

/// @nodoc
mixin _$AuthFlowDto {
  String get id => throw _privateConstructorUsedError;
  String? get oauth2LoginChallenge => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  DateTime get issuedAt => throw _privateConstructorUsedError;
  String get requestUrl => throw _privateConstructorUsedError;
  String? get returnTo => throw _privateConstructorUsedError;
  UiDto get ui => throw _privateConstructorUsedError;
  String? get sessionTokenExchangeCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthFlowDtoCopyWith<AuthFlowDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFlowDtoCopyWith<$Res> {
  factory $AuthFlowDtoCopyWith(
          AuthFlowDto value, $Res Function(AuthFlowDto) then) =
      _$AuthFlowDtoCopyWithImpl<$Res, AuthFlowDto>;
  @useResult
  $Res call(
      {String id,
      String? oauth2LoginChallenge,
      String type,
      DateTime expiresAt,
      DateTime issuedAt,
      String requestUrl,
      String? returnTo,
      UiDto ui,
      String? sessionTokenExchangeCode});

  $UiDtoCopyWith<$Res> get ui;
}

/// @nodoc
class _$AuthFlowDtoCopyWithImpl<$Res, $Val extends AuthFlowDto>
    implements $AuthFlowDtoCopyWith<$Res> {
  _$AuthFlowDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? oauth2LoginChallenge = freezed,
    Object? type = null,
    Object? expiresAt = null,
    Object? issuedAt = null,
    Object? requestUrl = null,
    Object? returnTo = freezed,
    Object? ui = null,
    Object? sessionTokenExchangeCode = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      oauth2LoginChallenge: freezed == oauth2LoginChallenge
          ? _value.oauth2LoginChallenge
          : oauth2LoginChallenge // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      issuedAt: null == issuedAt
          ? _value.issuedAt
          : issuedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requestUrl: null == requestUrl
          ? _value.requestUrl
          : requestUrl // ignore: cast_nullable_to_non_nullable
              as String,
      returnTo: freezed == returnTo
          ? _value.returnTo
          : returnTo // ignore: cast_nullable_to_non_nullable
              as String?,
      ui: null == ui
          ? _value.ui
          : ui // ignore: cast_nullable_to_non_nullable
              as UiDto,
      sessionTokenExchangeCode: freezed == sessionTokenExchangeCode
          ? _value.sessionTokenExchangeCode
          : sessionTokenExchangeCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UiDtoCopyWith<$Res> get ui {
    return $UiDtoCopyWith<$Res>(_value.ui, (value) {
      return _then(_value.copyWith(ui: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthFlowDtoCopyWith<$Res>
    implements $AuthFlowDtoCopyWith<$Res> {
  factory _$$_AuthFlowDtoCopyWith(
          _$_AuthFlowDto value, $Res Function(_$_AuthFlowDto) then) =
      __$$_AuthFlowDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? oauth2LoginChallenge,
      String type,
      DateTime expiresAt,
      DateTime issuedAt,
      String requestUrl,
      String? returnTo,
      UiDto ui,
      String? sessionTokenExchangeCode});

  @override
  $UiDtoCopyWith<$Res> get ui;
}

/// @nodoc
class __$$_AuthFlowDtoCopyWithImpl<$Res>
    extends _$AuthFlowDtoCopyWithImpl<$Res, _$_AuthFlowDto>
    implements _$$_AuthFlowDtoCopyWith<$Res> {
  __$$_AuthFlowDtoCopyWithImpl(
      _$_AuthFlowDto _value, $Res Function(_$_AuthFlowDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? oauth2LoginChallenge = freezed,
    Object? type = null,
    Object? expiresAt = null,
    Object? issuedAt = null,
    Object? requestUrl = null,
    Object? returnTo = freezed,
    Object? ui = null,
    Object? sessionTokenExchangeCode = freezed,
  }) {
    return _then(_$_AuthFlowDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      oauth2LoginChallenge: freezed == oauth2LoginChallenge
          ? _value.oauth2LoginChallenge
          : oauth2LoginChallenge // ignore: cast_nullable_to_non_nullable
              as String?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      issuedAt: null == issuedAt
          ? _value.issuedAt
          : issuedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      requestUrl: null == requestUrl
          ? _value.requestUrl
          : requestUrl // ignore: cast_nullable_to_non_nullable
              as String,
      returnTo: freezed == returnTo
          ? _value.returnTo
          : returnTo // ignore: cast_nullable_to_non_nullable
              as String?,
      ui: null == ui
          ? _value.ui
          : ui // ignore: cast_nullable_to_non_nullable
              as UiDto,
      sessionTokenExchangeCode: freezed == sessionTokenExchangeCode
          ? _value.sessionTokenExchangeCode
          : sessionTokenExchangeCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AuthFlowDto extends _AuthFlowDto {
  const _$_AuthFlowDto(
      {required this.id,
      this.oauth2LoginChallenge,
      required this.type,
      required this.expiresAt,
      required this.issuedAt,
      required this.requestUrl,
      this.returnTo,
      required this.ui,
      this.sessionTokenExchangeCode})
      : super._();

  factory _$_AuthFlowDto.fromJson(Map<String, dynamic> json) =>
      _$$_AuthFlowDtoFromJson(json);

  @override
  final String id;
  @override
  final String? oauth2LoginChallenge;
  @override
  final String type;
  @override
  final DateTime expiresAt;
  @override
  final DateTime issuedAt;
  @override
  final String requestUrl;
  @override
  final String? returnTo;
  @override
  final UiDto ui;
  @override
  final String? sessionTokenExchangeCode;

  @override
  String toString() {
    return 'AuthFlowDto(id: $id, oauth2LoginChallenge: $oauth2LoginChallenge, type: $type, expiresAt: $expiresAt, issuedAt: $issuedAt, requestUrl: $requestUrl, returnTo: $returnTo, ui: $ui, sessionTokenExchangeCode: $sessionTokenExchangeCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthFlowDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.oauth2LoginChallenge, oauth2LoginChallenge) ||
                other.oauth2LoginChallenge == oauth2LoginChallenge) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.issuedAt, issuedAt) ||
                other.issuedAt == issuedAt) &&
            (identical(other.requestUrl, requestUrl) ||
                other.requestUrl == requestUrl) &&
            (identical(other.returnTo, returnTo) ||
                other.returnTo == returnTo) &&
            (identical(other.ui, ui) || other.ui == ui) &&
            (identical(
                    other.sessionTokenExchangeCode, sessionTokenExchangeCode) ||
                other.sessionTokenExchangeCode == sessionTokenExchangeCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, oauth2LoginChallenge, type,
      expiresAt, issuedAt, requestUrl, returnTo, ui, sessionTokenExchangeCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthFlowDtoCopyWith<_$_AuthFlowDto> get copyWith =>
      __$$_AuthFlowDtoCopyWithImpl<_$_AuthFlowDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AuthFlowDtoToJson(
      this,
    );
  }
}

abstract class _AuthFlowDto extends AuthFlowDto {
  const factory _AuthFlowDto(
      {required final String id,
      final String? oauth2LoginChallenge,
      required final String type,
      required final DateTime expiresAt,
      required final DateTime issuedAt,
      required final String requestUrl,
      final String? returnTo,
      required final UiDto ui,
      final String? sessionTokenExchangeCode}) = _$_AuthFlowDto;
  const _AuthFlowDto._() : super._();

  factory _AuthFlowDto.fromJson(Map<String, dynamic> json) =
      _$_AuthFlowDto.fromJson;

  @override
  String get id;
  @override
  String? get oauth2LoginChallenge;
  @override
  String get type;
  @override
  DateTime get expiresAt;
  @override
  DateTime get issuedAt;
  @override
  String get requestUrl;
  @override
  String? get returnTo;
  @override
  UiDto get ui;
  @override
  String? get sessionTokenExchangeCode;
  @override
  @JsonKey(ignore: true)
  _$$_AuthFlowDtoCopyWith<_$_AuthFlowDto> get copyWith =>
      throw _privateConstructorUsedError;
}

UiDto _$UiDtoFromJson(Map<String, dynamic> json) {
  return _UiDto.fromJson(json);
}

/// @nodoc
mixin _$UiDto {
  String get action => throw _privateConstructorUsedError;
  String get method => throw _privateConstructorUsedError;
  List<NodeDto> get nodes => throw _privateConstructorUsedError;
  List<MessageDto>? get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UiDtoCopyWith<UiDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UiDtoCopyWith<$Res> {
  factory $UiDtoCopyWith(UiDto value, $Res Function(UiDto) then) =
      _$UiDtoCopyWithImpl<$Res, UiDto>;
  @useResult
  $Res call(
      {String action,
      String method,
      List<NodeDto> nodes,
      List<MessageDto>? messages});
}

/// @nodoc
class _$UiDtoCopyWithImpl<$Res, $Val extends UiDto>
    implements $UiDtoCopyWith<$Res> {
  _$UiDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? method = null,
    Object? nodes = null,
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      nodes: null == nodes
          ? _value.nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<NodeDto>,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageDto>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UiDtoCopyWith<$Res> implements $UiDtoCopyWith<$Res> {
  factory _$$_UiDtoCopyWith(_$_UiDto value, $Res Function(_$_UiDto) then) =
      __$$_UiDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String action,
      String method,
      List<NodeDto> nodes,
      List<MessageDto>? messages});
}

/// @nodoc
class __$$_UiDtoCopyWithImpl<$Res> extends _$UiDtoCopyWithImpl<$Res, _$_UiDto>
    implements _$$_UiDtoCopyWith<$Res> {
  __$$_UiDtoCopyWithImpl(_$_UiDto _value, $Res Function(_$_UiDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? method = null,
    Object? nodes = null,
    Object? messages = freezed,
  }) {
    return _then(_$_UiDto(
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      nodes: null == nodes
          ? _value._nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<NodeDto>,
      messages: freezed == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UiDto extends _UiDto {
  const _$_UiDto(
      {required this.action,
      required this.method,
      required final List<NodeDto> nodes,
      final List<MessageDto>? messages})
      : _nodes = nodes,
        _messages = messages,
        super._();

  factory _$_UiDto.fromJson(Map<String, dynamic> json) =>
      _$$_UiDtoFromJson(json);

  @override
  final String action;
  @override
  final String method;
  final List<NodeDto> _nodes;
  @override
  List<NodeDto> get nodes {
    if (_nodes is EqualUnmodifiableListView) return _nodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_nodes);
  }

  final List<MessageDto>? _messages;
  @override
  List<MessageDto>? get messages {
    final value = _messages;
    if (value == null) return null;
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UiDto(action: $action, method: $method, nodes: $nodes, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UiDto &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality().equals(other._nodes, _nodes) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      action,
      method,
      const DeepCollectionEquality().hash(_nodes),
      const DeepCollectionEquality().hash(_messages));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UiDtoCopyWith<_$_UiDto> get copyWith =>
      __$$_UiDtoCopyWithImpl<_$_UiDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UiDtoToJson(
      this,
    );
  }
}

abstract class _UiDto extends UiDto {
  const factory _UiDto(
      {required final String action,
      required final String method,
      required final List<NodeDto> nodes,
      final List<MessageDto>? messages}) = _$_UiDto;
  const _UiDto._() : super._();

  factory _UiDto.fromJson(Map<String, dynamic> json) = _$_UiDto.fromJson;

  @override
  String get action;
  @override
  String get method;
  @override
  List<NodeDto> get nodes;
  @override
  List<MessageDto>? get messages;
  @override
  @JsonKey(ignore: true)
  _$$_UiDtoCopyWith<_$_UiDto> get copyWith =>
      throw _privateConstructorUsedError;
}

NodeDto _$NodeDtoFromJson(Map<String, dynamic> json) {
  return _NodeDto.fromJson(json);
}

/// @nodoc
mixin _$NodeDto {
  String get type => throw _privateConstructorUsedError;
  String get group => throw _privateConstructorUsedError;
  AttributesDto get attributes => throw _privateConstructorUsedError;
  List<MessageDto> get messages => throw _privateConstructorUsedError;
  MetaDto get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NodeDtoCopyWith<NodeDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeDtoCopyWith<$Res> {
  factory $NodeDtoCopyWith(NodeDto value, $Res Function(NodeDto) then) =
      _$NodeDtoCopyWithImpl<$Res, NodeDto>;
  @useResult
  $Res call(
      {String type,
      String group,
      AttributesDto attributes,
      List<MessageDto> messages,
      MetaDto meta});

  $AttributesDtoCopyWith<$Res> get attributes;
  $MetaDtoCopyWith<$Res> get meta;
}

/// @nodoc
class _$NodeDtoCopyWithImpl<$Res, $Val extends NodeDto>
    implements $NodeDtoCopyWith<$Res> {
  _$NodeDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? group = null,
    Object? attributes = null,
    Object? messages = null,
    Object? meta = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as AttributesDto,
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageDto>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttributesDtoCopyWith<$Res> get attributes {
    return $AttributesDtoCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaDtoCopyWith<$Res> get meta {
    return $MetaDtoCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NodeDtoCopyWith<$Res> implements $NodeDtoCopyWith<$Res> {
  factory _$$_NodeDtoCopyWith(
          _$_NodeDto value, $Res Function(_$_NodeDto) then) =
      __$$_NodeDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String type,
      String group,
      AttributesDto attributes,
      List<MessageDto> messages,
      MetaDto meta});

  @override
  $AttributesDtoCopyWith<$Res> get attributes;
  @override
  $MetaDtoCopyWith<$Res> get meta;
}

/// @nodoc
class __$$_NodeDtoCopyWithImpl<$Res>
    extends _$NodeDtoCopyWithImpl<$Res, _$_NodeDto>
    implements _$$_NodeDtoCopyWith<$Res> {
  __$$_NodeDtoCopyWithImpl(_$_NodeDto _value, $Res Function(_$_NodeDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? group = null,
    Object? attributes = null,
    Object? messages = null,
    Object? meta = null,
  }) {
    return _then(_$_NodeDto(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      attributes: null == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as AttributesDto,
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<MessageDto>,
      meta: null == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as MetaDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NodeDto implements _NodeDto {
  const _$_NodeDto(
      {required this.type,
      required this.group,
      required this.attributes,
      required final List<MessageDto> messages,
      required this.meta})
      : _messages = messages;

  factory _$_NodeDto.fromJson(Map<String, dynamic> json) =>
      _$$_NodeDtoFromJson(json);

  @override
  final String type;
  @override
  final String group;
  @override
  final AttributesDto attributes;
  final List<MessageDto> _messages;
  @override
  List<MessageDto> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final MetaDto meta;

  @override
  String toString() {
    return 'NodeDto(type: $type, group: $group, attributes: $attributes, messages: $messages, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NodeDto &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, type, group, attributes,
      const DeepCollectionEquality().hash(_messages), meta);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NodeDtoCopyWith<_$_NodeDto> get copyWith =>
      __$$_NodeDtoCopyWithImpl<_$_NodeDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NodeDtoToJson(
      this,
    );
  }
}

abstract class _NodeDto implements NodeDto {
  const factory _NodeDto(
      {required final String type,
      required final String group,
      required final AttributesDto attributes,
      required final List<MessageDto> messages,
      required final MetaDto meta}) = _$_NodeDto;

  factory _NodeDto.fromJson(Map<String, dynamic> json) = _$_NodeDto.fromJson;

  @override
  String get type;
  @override
  String get group;
  @override
  AttributesDto get attributes;
  @override
  List<MessageDto> get messages;
  @override
  MetaDto get meta;
  @override
  @JsonKey(ignore: true)
  _$$_NodeDtoCopyWith<_$_NodeDto> get copyWith =>
      throw _privateConstructorUsedError;
}

AttributesDto _$AttributesDtoFromJson(Map<String, dynamic> json) {
  return _AttributesDto.fromJson(json);
}

/// @nodoc
mixin _$AttributesDto {
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;
  bool? get required => throw _privateConstructorUsedError;
  bool? get disabled => throw _privateConstructorUsedError;
  String? get nodeType => throw _privateConstructorUsedError;
  String? get autocomplete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributesDtoCopyWith<AttributesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributesDtoCopyWith<$Res> {
  factory $AttributesDtoCopyWith(
          AttributesDto value, $Res Function(AttributesDto) then) =
      _$AttributesDtoCopyWithImpl<$Res, AttributesDto>;
  @useResult
  $Res call(
      {String? name,
      String? type,
      dynamic value,
      bool? required,
      bool? disabled,
      String? nodeType,
      String? autocomplete});
}

/// @nodoc
class _$AttributesDtoCopyWithImpl<$Res, $Val extends AttributesDto>
    implements $AttributesDtoCopyWith<$Res> {
  _$AttributesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? value = freezed,
    Object? required = freezed,
    Object? disabled = freezed,
    Object? nodeType = freezed,
    Object? autocomplete = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      disabled: freezed == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      nodeType: freezed == nodeType
          ? _value.nodeType
          : nodeType // ignore: cast_nullable_to_non_nullable
              as String?,
      autocomplete: freezed == autocomplete
          ? _value.autocomplete
          : autocomplete // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AttributesDtoCopyWith<$Res>
    implements $AttributesDtoCopyWith<$Res> {
  factory _$$_AttributesDtoCopyWith(
          _$_AttributesDto value, $Res Function(_$_AttributesDto) then) =
      __$$_AttributesDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? type,
      dynamic value,
      bool? required,
      bool? disabled,
      String? nodeType,
      String? autocomplete});
}

/// @nodoc
class __$$_AttributesDtoCopyWithImpl<$Res>
    extends _$AttributesDtoCopyWithImpl<$Res, _$_AttributesDto>
    implements _$$_AttributesDtoCopyWith<$Res> {
  __$$_AttributesDtoCopyWithImpl(
      _$_AttributesDto _value, $Res Function(_$_AttributesDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? value = freezed,
    Object? required = freezed,
    Object? disabled = freezed,
    Object? nodeType = freezed,
    Object? autocomplete = freezed,
  }) {
    return _then(_$_AttributesDto(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      required: freezed == required
          ? _value.required
          : required // ignore: cast_nullable_to_non_nullable
              as bool?,
      disabled: freezed == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      nodeType: freezed == nodeType
          ? _value.nodeType
          : nodeType // ignore: cast_nullable_to_non_nullable
              as String?,
      autocomplete: freezed == autocomplete
          ? _value.autocomplete
          : autocomplete // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AttributesDto implements _AttributesDto {
  const _$_AttributesDto(
      {this.name,
      this.type,
      this.value,
      this.required,
      this.disabled,
      this.nodeType,
      this.autocomplete});

  factory _$_AttributesDto.fromJson(Map<String, dynamic> json) =>
      _$$_AttributesDtoFromJson(json);

  @override
  final String? name;
  @override
  final String? type;
  @override
  final dynamic value;
  @override
  final bool? required;
  @override
  final bool? disabled;
  @override
  final String? nodeType;
  @override
  final String? autocomplete;

  @override
  String toString() {
    return 'AttributesDto(name: $name, type: $type, value: $value, required: $required, disabled: $disabled, nodeType: $nodeType, autocomplete: $autocomplete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AttributesDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.required, required) ||
                other.required == required) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled) &&
            (identical(other.nodeType, nodeType) ||
                other.nodeType == nodeType) &&
            (identical(other.autocomplete, autocomplete) ||
                other.autocomplete == autocomplete));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      name,
      type,
      const DeepCollectionEquality().hash(value),
      required,
      disabled,
      nodeType,
      autocomplete);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AttributesDtoCopyWith<_$_AttributesDto> get copyWith =>
      __$$_AttributesDtoCopyWithImpl<_$_AttributesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttributesDtoToJson(
      this,
    );
  }
}

abstract class _AttributesDto implements AttributesDto {
  const factory _AttributesDto(
      {final String? name,
      final String? type,
      final dynamic value,
      final bool? required,
      final bool? disabled,
      final String? nodeType,
      final String? autocomplete}) = _$_AttributesDto;

  factory _AttributesDto.fromJson(Map<String, dynamic> json) =
      _$_AttributesDto.fromJson;

  @override
  String? get name;
  @override
  String? get type;
  @override
  dynamic get value;
  @override
  bool? get required;
  @override
  bool? get disabled;
  @override
  String? get nodeType;
  @override
  String? get autocomplete;
  @override
  @JsonKey(ignore: true)
  _$$_AttributesDtoCopyWith<_$_AttributesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageDto _$MessageDtoFromJson(Map<String, dynamic> json) {
  return _MessageDto.fromJson(json);
}

/// @nodoc
mixin _$MessageDto {
  int get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  MessageContextDto? get context => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageDtoCopyWith<MessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDtoCopyWith<$Res> {
  factory $MessageDtoCopyWith(
          MessageDto value, $Res Function(MessageDto) then) =
      _$MessageDtoCopyWithImpl<$Res, MessageDto>;
  @useResult
  $Res call({int id, String text, String type, MessageContextDto? context});

  $MessageContextDtoCopyWith<$Res>? get context;
}

/// @nodoc
class _$MessageDtoCopyWithImpl<$Res, $Val extends MessageDto>
    implements $MessageDtoCopyWith<$Res> {
  _$MessageDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? type = null,
    Object? context = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as MessageContextDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageContextDtoCopyWith<$Res>? get context {
    if (_value.context == null) {
      return null;
    }

    return $MessageContextDtoCopyWith<$Res>(_value.context!, (value) {
      return _then(_value.copyWith(context: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MessageDtoCopyWith<$Res>
    implements $MessageDtoCopyWith<$Res> {
  factory _$$_MessageDtoCopyWith(
          _$_MessageDto value, $Res Function(_$_MessageDto) then) =
      __$$_MessageDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String text, String type, MessageContextDto? context});

  @override
  $MessageContextDtoCopyWith<$Res>? get context;
}

/// @nodoc
class __$$_MessageDtoCopyWithImpl<$Res>
    extends _$MessageDtoCopyWithImpl<$Res, _$_MessageDto>
    implements _$$_MessageDtoCopyWith<$Res> {
  __$$_MessageDtoCopyWithImpl(
      _$_MessageDto _value, $Res Function(_$_MessageDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? type = null,
    Object? context = freezed,
  }) {
    return _then(_$_MessageDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as MessageContextDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageDto implements _MessageDto {
  const _$_MessageDto(
      {required this.id, required this.text, required this.type, this.context});

  factory _$_MessageDto.fromJson(Map<String, dynamic> json) =>
      _$$_MessageDtoFromJson(json);

  @override
  final int id;
  @override
  final String text;
  @override
  final String type;
  @override
  final MessageContextDto? context;

  @override
  String toString() {
    return 'MessageDto(id: $id, text: $text, type: $type, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.context, context) || other.context == context));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, type, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageDtoCopyWith<_$_MessageDto> get copyWith =>
      __$$_MessageDtoCopyWithImpl<_$_MessageDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageDtoToJson(
      this,
    );
  }
}

abstract class _MessageDto implements MessageDto {
  const factory _MessageDto(
      {required final int id,
      required final String text,
      required final String type,
      final MessageContextDto? context}) = _$_MessageDto;

  factory _MessageDto.fromJson(Map<String, dynamic> json) =
      _$_MessageDto.fromJson;

  @override
  int get id;
  @override
  String get text;
  @override
  String get type;
  @override
  MessageContextDto? get context;
  @override
  @JsonKey(ignore: true)
  _$$_MessageDtoCopyWith<_$_MessageDto> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageContextDto _$MessageContextDtoFromJson(Map<String, dynamic> json) {
  return _MessageContextDto.fromJson(json);
}

/// @nodoc
mixin _$MessageContextDto {
  String? get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageContextDtoCopyWith<MessageContextDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageContextDtoCopyWith<$Res> {
  factory $MessageContextDtoCopyWith(
          MessageContextDto value, $Res Function(MessageContextDto) then) =
      _$MessageContextDtoCopyWithImpl<$Res, MessageContextDto>;
  @useResult
  $Res call({String? reason});
}

/// @nodoc
class _$MessageContextDtoCopyWithImpl<$Res, $Val extends MessageContextDto>
    implements $MessageContextDtoCopyWith<$Res> {
  _$MessageContextDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MessageContextDtoCopyWith<$Res>
    implements $MessageContextDtoCopyWith<$Res> {
  factory _$$_MessageContextDtoCopyWith(_$_MessageContextDto value,
          $Res Function(_$_MessageContextDto) then) =
      __$$_MessageContextDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? reason});
}

/// @nodoc
class __$$_MessageContextDtoCopyWithImpl<$Res>
    extends _$MessageContextDtoCopyWithImpl<$Res, _$_MessageContextDto>
    implements _$$_MessageContextDtoCopyWith<$Res> {
  __$$_MessageContextDtoCopyWithImpl(
      _$_MessageContextDto _value, $Res Function(_$_MessageContextDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(_$_MessageContextDto(
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageContextDto implements _MessageContextDto {
  const _$_MessageContextDto({this.reason});

  factory _$_MessageContextDto.fromJson(Map<String, dynamic> json) =>
      _$$_MessageContextDtoFromJson(json);

  @override
  final String? reason;

  @override
  String toString() {
    return 'MessageContextDto(reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageContextDto &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageContextDtoCopyWith<_$_MessageContextDto> get copyWith =>
      __$$_MessageContextDtoCopyWithImpl<_$_MessageContextDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageContextDtoToJson(
      this,
    );
  }
}

abstract class _MessageContextDto implements MessageContextDto {
  const factory _MessageContextDto({final String? reason}) =
      _$_MessageContextDto;

  factory _MessageContextDto.fromJson(Map<String, dynamic> json) =
      _$_MessageContextDto.fromJson;

  @override
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$_MessageContextDtoCopyWith<_$_MessageContextDto> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaDto _$MetaDtoFromJson(Map<String, dynamic> json) {
  return _MetaDto.fromJson(json);
}

/// @nodoc
mixin _$MetaDto {
  LabelDto? get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaDtoCopyWith<MetaDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaDtoCopyWith<$Res> {
  factory $MetaDtoCopyWith(MetaDto value, $Res Function(MetaDto) then) =
      _$MetaDtoCopyWithImpl<$Res, MetaDto>;
  @useResult
  $Res call({LabelDto? label});

  $LabelDtoCopyWith<$Res>? get label;
}

/// @nodoc
class _$MetaDtoCopyWithImpl<$Res, $Val extends MetaDto>
    implements $MetaDtoCopyWith<$Res> {
  _$MetaDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
  }) {
    return _then(_value.copyWith(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as LabelDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LabelDtoCopyWith<$Res>? get label {
    if (_value.label == null) {
      return null;
    }

    return $LabelDtoCopyWith<$Res>(_value.label!, (value) {
      return _then(_value.copyWith(label: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MetaDtoCopyWith<$Res> implements $MetaDtoCopyWith<$Res> {
  factory _$$_MetaDtoCopyWith(
          _$_MetaDto value, $Res Function(_$_MetaDto) then) =
      __$$_MetaDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LabelDto? label});

  @override
  $LabelDtoCopyWith<$Res>? get label;
}

/// @nodoc
class __$$_MetaDtoCopyWithImpl<$Res>
    extends _$MetaDtoCopyWithImpl<$Res, _$_MetaDto>
    implements _$$_MetaDtoCopyWith<$Res> {
  __$$_MetaDtoCopyWithImpl(_$_MetaDto _value, $Res Function(_$_MetaDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
  }) {
    return _then(_$_MetaDto(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as LabelDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MetaDto implements _MetaDto {
  const _$_MetaDto({this.label});

  factory _$_MetaDto.fromJson(Map<String, dynamic> json) =>
      _$$_MetaDtoFromJson(json);

  @override
  final LabelDto? label;

  @override
  String toString() {
    return 'MetaDto(label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MetaDto &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaDtoCopyWith<_$_MetaDto> get copyWith =>
      __$$_MetaDtoCopyWithImpl<_$_MetaDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaDtoToJson(
      this,
    );
  }
}

abstract class _MetaDto implements MetaDto {
  const factory _MetaDto({final LabelDto? label}) = _$_MetaDto;

  factory _MetaDto.fromJson(Map<String, dynamic> json) = _$_MetaDto.fromJson;

  @override
  LabelDto? get label;
  @override
  @JsonKey(ignore: true)
  _$$_MetaDtoCopyWith<_$_MetaDto> get copyWith =>
      throw _privateConstructorUsedError;
}

LabelDto _$LabelDtoFromJson(Map<String, dynamic> json) {
  return _LabelDto.fromJson(json);
}

/// @nodoc
mixin _$LabelDto {
  int get id => throw _privateConstructorUsedError;
  String get text => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  ContextDto? get context => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LabelDtoCopyWith<LabelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabelDtoCopyWith<$Res> {
  factory $LabelDtoCopyWith(LabelDto value, $Res Function(LabelDto) then) =
      _$LabelDtoCopyWithImpl<$Res, LabelDto>;
  @useResult
  $Res call({int id, String text, String type, ContextDto? context});

  $ContextDtoCopyWith<$Res>? get context;
}

/// @nodoc
class _$LabelDtoCopyWithImpl<$Res, $Val extends LabelDto>
    implements $LabelDtoCopyWith<$Res> {
  _$LabelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? type = null,
    Object? context = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as ContextDto?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContextDtoCopyWith<$Res>? get context {
    if (_value.context == null) {
      return null;
    }

    return $ContextDtoCopyWith<$Res>(_value.context!, (value) {
      return _then(_value.copyWith(context: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LabelDtoCopyWith<$Res> implements $LabelDtoCopyWith<$Res> {
  factory _$$_LabelDtoCopyWith(
          _$_LabelDto value, $Res Function(_$_LabelDto) then) =
      __$$_LabelDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String text, String type, ContextDto? context});

  @override
  $ContextDtoCopyWith<$Res>? get context;
}

/// @nodoc
class __$$_LabelDtoCopyWithImpl<$Res>
    extends _$LabelDtoCopyWithImpl<$Res, _$_LabelDto>
    implements _$$_LabelDtoCopyWith<$Res> {
  __$$_LabelDtoCopyWithImpl(
      _$_LabelDto _value, $Res Function(_$_LabelDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? type = null,
    Object? context = freezed,
  }) {
    return _then(_$_LabelDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as ContextDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LabelDto implements _LabelDto {
  const _$_LabelDto(
      {required this.id, required this.text, required this.type, this.context});

  factory _$_LabelDto.fromJson(Map<String, dynamic> json) =>
      _$$_LabelDtoFromJson(json);

  @override
  final int id;
  @override
  final String text;
  @override
  final String type;
  @override
  final ContextDto? context;

  @override
  String toString() {
    return 'LabelDto(id: $id, text: $text, type: $type, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LabelDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.context, context) || other.context == context));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, type, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LabelDtoCopyWith<_$_LabelDto> get copyWith =>
      __$$_LabelDtoCopyWithImpl<_$_LabelDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LabelDtoToJson(
      this,
    );
  }
}

abstract class _LabelDto implements LabelDto {
  const factory _LabelDto(
      {required final int id,
      required final String text,
      required final String type,
      final ContextDto? context}) = _$_LabelDto;

  factory _LabelDto.fromJson(Map<String, dynamic> json) = _$_LabelDto.fromJson;

  @override
  int get id;
  @override
  String get text;
  @override
  String get type;
  @override
  ContextDto? get context;
  @override
  @JsonKey(ignore: true)
  _$$_LabelDtoCopyWith<_$_LabelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ContextDto _$ContextDtoFromJson(Map<String, dynamic> json) {
  return _ContextDto.fromJson(json);
}

/// @nodoc
mixin _$ContextDto {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContextDtoCopyWith<$Res> {
  factory $ContextDtoCopyWith(
          ContextDto value, $Res Function(ContextDto) then) =
      _$ContextDtoCopyWithImpl<$Res, ContextDto>;
}

/// @nodoc
class _$ContextDtoCopyWithImpl<$Res, $Val extends ContextDto>
    implements $ContextDtoCopyWith<$Res> {
  _$ContextDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ContextDtoCopyWith<$Res> {
  factory _$$_ContextDtoCopyWith(
          _$_ContextDto value, $Res Function(_$_ContextDto) then) =
      __$$_ContextDtoCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ContextDtoCopyWithImpl<$Res>
    extends _$ContextDtoCopyWithImpl<$Res, _$_ContextDto>
    implements _$$_ContextDtoCopyWith<$Res> {
  __$$_ContextDtoCopyWithImpl(
      _$_ContextDto _value, $Res Function(_$_ContextDto) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_ContextDto implements _ContextDto {
  const _$_ContextDto();

  factory _$_ContextDto.fromJson(Map<String, dynamic> json) =>
      _$$_ContextDtoFromJson(json);

  @override
  String toString() {
    return 'ContextDto()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ContextDto);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContextDtoToJson(
      this,
    );
  }
}

abstract class _ContextDto implements ContextDto {
  const factory _ContextDto() = _$_ContextDto;

  factory _ContextDto.fromJson(Map<String, dynamic> json) =
      _$_ContextDto.fromJson;
}
