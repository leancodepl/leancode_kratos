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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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

  /// Serializes this AuthFlowDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AuthFlowDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of AuthFlowDto
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of AuthFlowDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UiDtoCopyWith<$Res> get ui {
    return $UiDtoCopyWith<$Res>(_value.ui, (value) {
      return _then(_value.copyWith(ui: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AuthFlowDtoImplCopyWith<$Res>
    implements $AuthFlowDtoCopyWith<$Res> {
  factory _$$AuthFlowDtoImplCopyWith(
          _$AuthFlowDtoImpl value, $Res Function(_$AuthFlowDtoImpl) then) =
      __$$AuthFlowDtoImplCopyWithImpl<$Res>;
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
class __$$AuthFlowDtoImplCopyWithImpl<$Res>
    extends _$AuthFlowDtoCopyWithImpl<$Res, _$AuthFlowDtoImpl>
    implements _$$AuthFlowDtoImplCopyWith<$Res> {
  __$$AuthFlowDtoImplCopyWithImpl(
      _$AuthFlowDtoImpl _value, $Res Function(_$AuthFlowDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AuthFlowDto
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_$AuthFlowDtoImpl(
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
class _$AuthFlowDtoImpl extends _AuthFlowDto {
  const _$AuthFlowDtoImpl(
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

  factory _$AuthFlowDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthFlowDtoImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthFlowDtoImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, oauth2LoginChallenge, type,
      expiresAt, issuedAt, requestUrl, returnTo, ui, sessionTokenExchangeCode);

  /// Create a copy of AuthFlowDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthFlowDtoImplCopyWith<_$AuthFlowDtoImpl> get copyWith =>
      __$$AuthFlowDtoImplCopyWithImpl<_$AuthFlowDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthFlowDtoImplToJson(
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
      final String? sessionTokenExchangeCode}) = _$AuthFlowDtoImpl;
  const _AuthFlowDto._() : super._();

  factory _AuthFlowDto.fromJson(Map<String, dynamic> json) =
      _$AuthFlowDtoImpl.fromJson;

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

  /// Create a copy of AuthFlowDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthFlowDtoImplCopyWith<_$AuthFlowDtoImpl> get copyWith =>
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

  /// Serializes this UiDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UiDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of UiDto
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$UiDtoImplCopyWith<$Res> implements $UiDtoCopyWith<$Res> {
  factory _$$UiDtoImplCopyWith(
          _$UiDtoImpl value, $Res Function(_$UiDtoImpl) then) =
      __$$UiDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String action,
      String method,
      List<NodeDto> nodes,
      List<MessageDto>? messages});
}

/// @nodoc
class __$$UiDtoImplCopyWithImpl<$Res>
    extends _$UiDtoCopyWithImpl<$Res, _$UiDtoImpl>
    implements _$$UiDtoImplCopyWith<$Res> {
  __$$UiDtoImplCopyWithImpl(
      _$UiDtoImpl _value, $Res Function(_$UiDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UiDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? method = null,
    Object? nodes = null,
    Object? messages = freezed,
  }) {
    return _then(_$UiDtoImpl(
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
class _$UiDtoImpl extends _UiDto {
  const _$UiDtoImpl(
      {required this.action,
      required this.method,
      required final List<NodeDto> nodes,
      final List<MessageDto>? messages})
      : _nodes = nodes,
        _messages = messages,
        super._();

  factory _$UiDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UiDtoImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UiDtoImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality().equals(other._nodes, _nodes) &&
            const DeepCollectionEquality().equals(other._messages, _messages));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      action,
      method,
      const DeepCollectionEquality().hash(_nodes),
      const DeepCollectionEquality().hash(_messages));

  /// Create a copy of UiDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UiDtoImplCopyWith<_$UiDtoImpl> get copyWith =>
      __$$UiDtoImplCopyWithImpl<_$UiDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UiDtoImplToJson(
      this,
    );
  }
}

abstract class _UiDto extends UiDto {
  const factory _UiDto(
      {required final String action,
      required final String method,
      required final List<NodeDto> nodes,
      final List<MessageDto>? messages}) = _$UiDtoImpl;
  const _UiDto._() : super._();

  factory _UiDto.fromJson(Map<String, dynamic> json) = _$UiDtoImpl.fromJson;

  @override
  String get action;
  @override
  String get method;
  @override
  List<NodeDto> get nodes;
  @override
  List<MessageDto>? get messages;

  /// Create a copy of UiDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UiDtoImplCopyWith<_$UiDtoImpl> get copyWith =>
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

  /// Serializes this NodeDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NodeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of NodeDto
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of NodeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AttributesDtoCopyWith<$Res> get attributes {
    return $AttributesDtoCopyWith<$Res>(_value.attributes, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }

  /// Create a copy of NodeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MetaDtoCopyWith<$Res> get meta {
    return $MetaDtoCopyWith<$Res>(_value.meta, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$NodeDtoImplCopyWith<$Res> implements $NodeDtoCopyWith<$Res> {
  factory _$$NodeDtoImplCopyWith(
          _$NodeDtoImpl value, $Res Function(_$NodeDtoImpl) then) =
      __$$NodeDtoImplCopyWithImpl<$Res>;
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
class __$$NodeDtoImplCopyWithImpl<$Res>
    extends _$NodeDtoCopyWithImpl<$Res, _$NodeDtoImpl>
    implements _$$NodeDtoImplCopyWith<$Res> {
  __$$NodeDtoImplCopyWithImpl(
      _$NodeDtoImpl _value, $Res Function(_$NodeDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of NodeDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? group = null,
    Object? attributes = null,
    Object? messages = null,
    Object? meta = null,
  }) {
    return _then(_$NodeDtoImpl(
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
class _$NodeDtoImpl extends _NodeDto {
  const _$NodeDtoImpl(
      {required this.type,
      required this.group,
      required this.attributes,
      required final List<MessageDto> messages,
      required this.meta})
      : _messages = messages,
        super._();

  factory _$NodeDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$NodeDtoImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NodeDtoImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.attributes, attributes) ||
                other.attributes == attributes) &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.meta, meta) || other.meta == meta));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, group, attributes,
      const DeepCollectionEquality().hash(_messages), meta);

  /// Create a copy of NodeDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NodeDtoImplCopyWith<_$NodeDtoImpl> get copyWith =>
      __$$NodeDtoImplCopyWithImpl<_$NodeDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NodeDtoImplToJson(
      this,
    );
  }
}

abstract class _NodeDto extends NodeDto {
  const factory _NodeDto(
      {required final String type,
      required final String group,
      required final AttributesDto attributes,
      required final List<MessageDto> messages,
      required final MetaDto meta}) = _$NodeDtoImpl;
  const _NodeDto._() : super._();

  factory _NodeDto.fromJson(Map<String, dynamic> json) = _$NodeDtoImpl.fromJson;

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

  /// Create a copy of NodeDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NodeDtoImplCopyWith<_$NodeDtoImpl> get copyWith =>
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

  /// Serializes this AttributesDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttributesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of AttributesDto
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$AttributesDtoImplCopyWith<$Res>
    implements $AttributesDtoCopyWith<$Res> {
  factory _$$AttributesDtoImplCopyWith(
          _$AttributesDtoImpl value, $Res Function(_$AttributesDtoImpl) then) =
      __$$AttributesDtoImplCopyWithImpl<$Res>;
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
class __$$AttributesDtoImplCopyWithImpl<$Res>
    extends _$AttributesDtoCopyWithImpl<$Res, _$AttributesDtoImpl>
    implements _$$AttributesDtoImplCopyWith<$Res> {
  __$$AttributesDtoImplCopyWithImpl(
      _$AttributesDtoImpl _value, $Res Function(_$AttributesDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttributesDto
  /// with the given fields replaced by the non-null parameter values.
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
    return _then(_$AttributesDtoImpl(
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
class _$AttributesDtoImpl implements _AttributesDto {
  const _$AttributesDtoImpl(
      {this.name,
      this.type,
      this.value,
      this.required,
      this.disabled,
      this.nodeType,
      this.autocomplete});

  factory _$AttributesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttributesDtoImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttributesDtoImpl &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of AttributesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttributesDtoImplCopyWith<_$AttributesDtoImpl> get copyWith =>
      __$$AttributesDtoImplCopyWithImpl<_$AttributesDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttributesDtoImplToJson(
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
      final String? autocomplete}) = _$AttributesDtoImpl;

  factory _AttributesDto.fromJson(Map<String, dynamic> json) =
      _$AttributesDtoImpl.fromJson;

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

  /// Create a copy of AttributesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttributesDtoImplCopyWith<_$AttributesDtoImpl> get copyWith =>
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

  /// Serializes this MessageDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of MessageDto
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of MessageDto
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$MessageDtoImplCopyWith<$Res>
    implements $MessageDtoCopyWith<$Res> {
  factory _$$MessageDtoImplCopyWith(
          _$MessageDtoImpl value, $Res Function(_$MessageDtoImpl) then) =
      __$$MessageDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String text, String type, MessageContextDto? context});

  @override
  $MessageContextDtoCopyWith<$Res>? get context;
}

/// @nodoc
class __$$MessageDtoImplCopyWithImpl<$Res>
    extends _$MessageDtoCopyWithImpl<$Res, _$MessageDtoImpl>
    implements _$$MessageDtoImplCopyWith<$Res> {
  __$$MessageDtoImplCopyWithImpl(
      _$MessageDtoImpl _value, $Res Function(_$MessageDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? type = null,
    Object? context = freezed,
  }) {
    return _then(_$MessageDtoImpl(
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
class _$MessageDtoImpl extends _MessageDto {
  const _$MessageDtoImpl(
      {required this.id, required this.text, required this.type, this.context})
      : super._();

  factory _$MessageDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageDtoImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.context, context) || other.context == context));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, type, context);

  /// Create a copy of MessageDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageDtoImplCopyWith<_$MessageDtoImpl> get copyWith =>
      __$$MessageDtoImplCopyWithImpl<_$MessageDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageDtoImplToJson(
      this,
    );
  }
}

abstract class _MessageDto extends MessageDto {
  const factory _MessageDto(
      {required final int id,
      required final String text,
      required final String type,
      final MessageContextDto? context}) = _$MessageDtoImpl;
  const _MessageDto._() : super._();

  factory _MessageDto.fromJson(Map<String, dynamic> json) =
      _$MessageDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get text;
  @override
  String get type;
  @override
  MessageContextDto? get context;

  /// Create a copy of MessageDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageDtoImplCopyWith<_$MessageDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageContextDto _$MessageContextDtoFromJson(Map<String, dynamic> json) {
  return _MessageContextDto.fromJson(json);
}

/// @nodoc
mixin _$MessageContextDto {
  String? get reason => throw _privateConstructorUsedError;

  /// Serializes this MessageContextDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MessageContextDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of MessageContextDto
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$MessageContextDtoImplCopyWith<$Res>
    implements $MessageContextDtoCopyWith<$Res> {
  factory _$$MessageContextDtoImplCopyWith(_$MessageContextDtoImpl value,
          $Res Function(_$MessageContextDtoImpl) then) =
      __$$MessageContextDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? reason});
}

/// @nodoc
class __$$MessageContextDtoImplCopyWithImpl<$Res>
    extends _$MessageContextDtoCopyWithImpl<$Res, _$MessageContextDtoImpl>
    implements _$$MessageContextDtoImplCopyWith<$Res> {
  __$$MessageContextDtoImplCopyWithImpl(_$MessageContextDtoImpl _value,
      $Res Function(_$MessageContextDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MessageContextDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(_$MessageContextDtoImpl(
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MessageContextDtoImpl implements _MessageContextDto {
  const _$MessageContextDtoImpl({this.reason});

  factory _$MessageContextDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MessageContextDtoImplFromJson(json);

  @override
  final String? reason;

  @override
  String toString() {
    return 'MessageContextDto(reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MessageContextDtoImpl &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, reason);

  /// Create a copy of MessageContextDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MessageContextDtoImplCopyWith<_$MessageContextDtoImpl> get copyWith =>
      __$$MessageContextDtoImplCopyWithImpl<_$MessageContextDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MessageContextDtoImplToJson(
      this,
    );
  }
}

abstract class _MessageContextDto implements MessageContextDto {
  const factory _MessageContextDto({final String? reason}) =
      _$MessageContextDtoImpl;

  factory _MessageContextDto.fromJson(Map<String, dynamic> json) =
      _$MessageContextDtoImpl.fromJson;

  @override
  String? get reason;

  /// Create a copy of MessageContextDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MessageContextDtoImplCopyWith<_$MessageContextDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MetaDto _$MetaDtoFromJson(Map<String, dynamic> json) {
  return _MetaDto.fromJson(json);
}

/// @nodoc
mixin _$MetaDto {
  LabelDto? get label => throw _privateConstructorUsedError;

  /// Serializes this MetaDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MetaDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of MetaDto
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of MetaDto
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$MetaDtoImplCopyWith<$Res> implements $MetaDtoCopyWith<$Res> {
  factory _$$MetaDtoImplCopyWith(
          _$MetaDtoImpl value, $Res Function(_$MetaDtoImpl) then) =
      __$$MetaDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LabelDto? label});

  @override
  $LabelDtoCopyWith<$Res>? get label;
}

/// @nodoc
class __$$MetaDtoImplCopyWithImpl<$Res>
    extends _$MetaDtoCopyWithImpl<$Res, _$MetaDtoImpl>
    implements _$$MetaDtoImplCopyWith<$Res> {
  __$$MetaDtoImplCopyWithImpl(
      _$MetaDtoImpl _value, $Res Function(_$MetaDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MetaDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
  }) {
    return _then(_$MetaDtoImpl(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as LabelDto?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MetaDtoImpl implements _MetaDto {
  const _$MetaDtoImpl({this.label});

  factory _$MetaDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MetaDtoImplFromJson(json);

  @override
  final LabelDto? label;

  @override
  String toString() {
    return 'MetaDto(label: $label)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MetaDtoImpl &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, label);

  /// Create a copy of MetaDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MetaDtoImplCopyWith<_$MetaDtoImpl> get copyWith =>
      __$$MetaDtoImplCopyWithImpl<_$MetaDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MetaDtoImplToJson(
      this,
    );
  }
}

abstract class _MetaDto implements MetaDto {
  const factory _MetaDto({final LabelDto? label}) = _$MetaDtoImpl;

  factory _MetaDto.fromJson(Map<String, dynamic> json) = _$MetaDtoImpl.fromJson;

  @override
  LabelDto? get label;

  /// Create a copy of MetaDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MetaDtoImplCopyWith<_$MetaDtoImpl> get copyWith =>
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
  Map<String, dynamic>? get context => throw _privateConstructorUsedError;

  /// Serializes this LabelDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LabelDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LabelDtoCopyWith<LabelDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabelDtoCopyWith<$Res> {
  factory $LabelDtoCopyWith(LabelDto value, $Res Function(LabelDto) then) =
      _$LabelDtoCopyWithImpl<$Res, LabelDto>;
  @useResult
  $Res call({int id, String text, String type, Map<String, dynamic>? context});
}

/// @nodoc
class _$LabelDtoCopyWithImpl<$Res, $Val extends LabelDto>
    implements $LabelDtoCopyWith<$Res> {
  _$LabelDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LabelDto
  /// with the given fields replaced by the non-null parameter values.
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
              as Map<String, dynamic>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LabelDtoImplCopyWith<$Res>
    implements $LabelDtoCopyWith<$Res> {
  factory _$$LabelDtoImplCopyWith(
          _$LabelDtoImpl value, $Res Function(_$LabelDtoImpl) then) =
      __$$LabelDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String text, String type, Map<String, dynamic>? context});
}

/// @nodoc
class __$$LabelDtoImplCopyWithImpl<$Res>
    extends _$LabelDtoCopyWithImpl<$Res, _$LabelDtoImpl>
    implements _$$LabelDtoImplCopyWith<$Res> {
  __$$LabelDtoImplCopyWithImpl(
      _$LabelDtoImpl _value, $Res Function(_$LabelDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LabelDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = null,
    Object? type = null,
    Object? context = freezed,
  }) {
    return _then(_$LabelDtoImpl(
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
          ? _value._context
          : context // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LabelDtoImpl implements _LabelDto {
  const _$LabelDtoImpl(
      {required this.id,
      required this.text,
      required this.type,
      final Map<String, dynamic>? context})
      : _context = context;

  factory _$LabelDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LabelDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String text;
  @override
  final String type;
  final Map<String, dynamic>? _context;
  @override
  Map<String, dynamic>? get context {
    final value = _context;
    if (value == null) return null;
    if (_context is EqualUnmodifiableMapView) return _context;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'LabelDto(id: $id, text: $text, type: $type, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LabelDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality().equals(other._context, _context));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, type,
      const DeepCollectionEquality().hash(_context));

  /// Create a copy of LabelDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LabelDtoImplCopyWith<_$LabelDtoImpl> get copyWith =>
      __$$LabelDtoImplCopyWithImpl<_$LabelDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LabelDtoImplToJson(
      this,
    );
  }
}

abstract class _LabelDto implements LabelDto {
  const factory _LabelDto(
      {required final int id,
      required final String text,
      required final String type,
      final Map<String, dynamic>? context}) = _$LabelDtoImpl;

  factory _LabelDto.fromJson(Map<String, dynamic> json) =
      _$LabelDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get text;
  @override
  String get type;
  @override
  Map<String, dynamic>? get context;

  /// Create a copy of LabelDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LabelDtoImplCopyWith<_$LabelDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
