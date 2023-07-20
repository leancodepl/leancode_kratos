// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegistrationFlow _$RegistrationFlowFromJson(Map<String, dynamic> json) {
  return _RegistrationFlow.fromJson(json);
}

/// @nodoc
mixin _$RegistrationFlow {
  String? get id => throw _privateConstructorUsedError;
  String? get oauth2LoginChallenge => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  DateTime? get issuedAt => throw _privateConstructorUsedError;
  String? get requestUrl => throw _privateConstructorUsedError;
  Ui? get ui => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationFlowCopyWith<RegistrationFlow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationFlowCopyWith<$Res> {
  factory $RegistrationFlowCopyWith(
          RegistrationFlow value, $Res Function(RegistrationFlow) then) =
      _$RegistrationFlowCopyWithImpl<$Res, RegistrationFlow>;
  @useResult
  $Res call(
      {String? id,
      String? oauth2LoginChallenge,
      String? type,
      DateTime? expiresAt,
      DateTime? issuedAt,
      String? requestUrl,
      Ui? ui});

  $UiCopyWith<$Res>? get ui;
}

/// @nodoc
class _$RegistrationFlowCopyWithImpl<$Res, $Val extends RegistrationFlow>
    implements $RegistrationFlowCopyWith<$Res> {
  _$RegistrationFlowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? oauth2LoginChallenge = freezed,
    Object? type = freezed,
    Object? expiresAt = freezed,
    Object? issuedAt = freezed,
    Object? requestUrl = freezed,
    Object? ui = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      oauth2LoginChallenge: freezed == oauth2LoginChallenge
          ? _value.oauth2LoginChallenge
          : oauth2LoginChallenge // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      issuedAt: freezed == issuedAt
          ? _value.issuedAt
          : issuedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requestUrl: freezed == requestUrl
          ? _value.requestUrl
          : requestUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ui: freezed == ui
          ? _value.ui
          : ui // ignore: cast_nullable_to_non_nullable
              as Ui?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UiCopyWith<$Res>? get ui {
    if (_value.ui == null) {
      return null;
    }

    return $UiCopyWith<$Res>(_value.ui!, (value) {
      return _then(_value.copyWith(ui: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RegistrationFlowCopyWith<$Res>
    implements $RegistrationFlowCopyWith<$Res> {
  factory _$$_RegistrationFlowCopyWith(
          _$_RegistrationFlow value, $Res Function(_$_RegistrationFlow) then) =
      __$$_RegistrationFlowCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? oauth2LoginChallenge,
      String? type,
      DateTime? expiresAt,
      DateTime? issuedAt,
      String? requestUrl,
      Ui? ui});

  @override
  $UiCopyWith<$Res>? get ui;
}

/// @nodoc
class __$$_RegistrationFlowCopyWithImpl<$Res>
    extends _$RegistrationFlowCopyWithImpl<$Res, _$_RegistrationFlow>
    implements _$$_RegistrationFlowCopyWith<$Res> {
  __$$_RegistrationFlowCopyWithImpl(
      _$_RegistrationFlow _value, $Res Function(_$_RegistrationFlow) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? oauth2LoginChallenge = freezed,
    Object? type = freezed,
    Object? expiresAt = freezed,
    Object? issuedAt = freezed,
    Object? requestUrl = freezed,
    Object? ui = freezed,
  }) {
    return _then(_$_RegistrationFlow(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      oauth2LoginChallenge: freezed == oauth2LoginChallenge
          ? _value.oauth2LoginChallenge
          : oauth2LoginChallenge // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      issuedAt: freezed == issuedAt
          ? _value.issuedAt
          : issuedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requestUrl: freezed == requestUrl
          ? _value.requestUrl
          : requestUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      ui: freezed == ui
          ? _value.ui
          : ui // ignore: cast_nullable_to_non_nullable
              as Ui?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegistrationFlow implements _RegistrationFlow {
  const _$_RegistrationFlow(
      {this.id,
      this.oauth2LoginChallenge,
      this.type,
      this.expiresAt,
      this.issuedAt,
      this.requestUrl,
      this.ui});

  factory _$_RegistrationFlow.fromJson(Map<String, dynamic> json) =>
      _$$_RegistrationFlowFromJson(json);

  @override
  final String? id;
  @override
  final String? oauth2LoginChallenge;
  @override
  final String? type;
  @override
  final DateTime? expiresAt;
  @override
  final DateTime? issuedAt;
  @override
  final String? requestUrl;
  @override
  final Ui? ui;

  @override
  String toString() {
    return 'RegistrationFlow(id: $id, oauth2LoginChallenge: $oauth2LoginChallenge, type: $type, expiresAt: $expiresAt, issuedAt: $issuedAt, requestUrl: $requestUrl, ui: $ui)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationFlow &&
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
            (identical(other.ui, ui) || other.ui == ui));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, oauth2LoginChallenge, type,
      expiresAt, issuedAt, requestUrl, ui);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistrationFlowCopyWith<_$_RegistrationFlow> get copyWith =>
      __$$_RegistrationFlowCopyWithImpl<_$_RegistrationFlow>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegistrationFlowToJson(
      this,
    );
  }
}

abstract class _RegistrationFlow implements RegistrationFlow {
  const factory _RegistrationFlow(
      {final String? id,
      final String? oauth2LoginChallenge,
      final String? type,
      final DateTime? expiresAt,
      final DateTime? issuedAt,
      final String? requestUrl,
      final Ui? ui}) = _$_RegistrationFlow;

  factory _RegistrationFlow.fromJson(Map<String, dynamic> json) =
      _$_RegistrationFlow.fromJson;

  @override
  String? get id;
  @override
  String? get oauth2LoginChallenge;
  @override
  String? get type;
  @override
  DateTime? get expiresAt;
  @override
  DateTime? get issuedAt;
  @override
  String? get requestUrl;
  @override
  Ui? get ui;
  @override
  @JsonKey(ignore: true)
  _$$_RegistrationFlowCopyWith<_$_RegistrationFlow> get copyWith =>
      throw _privateConstructorUsedError;
}

Ui _$UiFromJson(Map<String, dynamic> json) {
  return _Ui.fromJson(json);
}

/// @nodoc
mixin _$Ui {
  String? get action => throw _privateConstructorUsedError;
  String? get method => throw _privateConstructorUsedError;
  List<Node>? get nodes => throw _privateConstructorUsedError;
  List<Message>? get messages => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UiCopyWith<Ui> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UiCopyWith<$Res> {
  factory $UiCopyWith(Ui value, $Res Function(Ui) then) =
      _$UiCopyWithImpl<$Res, Ui>;
  @useResult
  $Res call(
      {String? action,
      String? method,
      List<Node>? nodes,
      List<Message>? messages});
}

/// @nodoc
class _$UiCopyWithImpl<$Res, $Val extends Ui> implements $UiCopyWith<$Res> {
  _$UiCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? method = freezed,
    Object? nodes = freezed,
    Object? messages = freezed,
  }) {
    return _then(_value.copyWith(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      nodes: freezed == nodes
          ? _value.nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<Node>?,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UiCopyWith<$Res> implements $UiCopyWith<$Res> {
  factory _$$_UiCopyWith(_$_Ui value, $Res Function(_$_Ui) then) =
      __$$_UiCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? action,
      String? method,
      List<Node>? nodes,
      List<Message>? messages});
}

/// @nodoc
class __$$_UiCopyWithImpl<$Res> extends _$UiCopyWithImpl<$Res, _$_Ui>
    implements _$$_UiCopyWith<$Res> {
  __$$_UiCopyWithImpl(_$_Ui _value, $Res Function(_$_Ui) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? method = freezed,
    Object? nodes = freezed,
    Object? messages = freezed,
  }) {
    return _then(_$_Ui(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      nodes: freezed == nodes
          ? _value._nodes
          : nodes // ignore: cast_nullable_to_non_nullable
              as List<Node>?,
      messages: freezed == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ui extends _Ui {
  const _$_Ui(
      {this.action,
      this.method,
      final List<Node>? nodes,
      final List<Message>? messages})
      : _nodes = nodes,
        _messages = messages,
        super._();

  factory _$_Ui.fromJson(Map<String, dynamic> json) => _$$_UiFromJson(json);

  @override
  final String? action;
  @override
  final String? method;
  final List<Node>? _nodes;
  @override
  List<Node>? get nodes {
    final value = _nodes;
    if (value == null) return null;
    if (_nodes is EqualUnmodifiableListView) return _nodes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Message>? _messages;
  @override
  List<Message>? get messages {
    final value = _messages;
    if (value == null) return null;
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Ui(action: $action, method: $method, nodes: $nodes, messages: $messages)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Ui &&
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
  _$$_UiCopyWith<_$_Ui> get copyWith =>
      __$$_UiCopyWithImpl<_$_Ui>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UiToJson(
      this,
    );
  }
}

abstract class _Ui extends Ui {
  const factory _Ui(
      {final String? action,
      final String? method,
      final List<Node>? nodes,
      final List<Message>? messages}) = _$_Ui;
  const _Ui._() : super._();

  factory _Ui.fromJson(Map<String, dynamic> json) = _$_Ui.fromJson;

  @override
  String? get action;
  @override
  String? get method;
  @override
  List<Node>? get nodes;
  @override
  List<Message>? get messages;
  @override
  @JsonKey(ignore: true)
  _$$_UiCopyWith<_$_Ui> get copyWith => throw _privateConstructorUsedError;
}

Node _$NodeFromJson(Map<String, dynamic> json) {
  return _Node.fromJson(json);
}

/// @nodoc
mixin _$Node {
  String? get type => throw _privateConstructorUsedError;
  String? get group => throw _privateConstructorUsedError;
  Attributes? get attributes => throw _privateConstructorUsedError;
  List<Message>? get messages => throw _privateConstructorUsedError;
  Meta? get meta => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NodeCopyWith<Node> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeCopyWith<$Res> {
  factory $NodeCopyWith(Node value, $Res Function(Node) then) =
      _$NodeCopyWithImpl<$Res, Node>;
  @useResult
  $Res call(
      {String? type,
      String? group,
      Attributes? attributes,
      List<Message>? messages,
      Meta? meta});

  $AttributesCopyWith<$Res>? get attributes;
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class _$NodeCopyWithImpl<$Res, $Val extends Node>
    implements $NodeCopyWith<$Res> {
  _$NodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? group = freezed,
    Object? attributes = freezed,
    Object? messages = freezed,
    Object? meta = freezed,
  }) {
    return _then(_value.copyWith(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes?,
      messages: freezed == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AttributesCopyWith<$Res>? get attributes {
    if (_value.attributes == null) {
      return null;
    }

    return $AttributesCopyWith<$Res>(_value.attributes!, (value) {
      return _then(_value.copyWith(attributes: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MetaCopyWith<$Res>? get meta {
    if (_value.meta == null) {
      return null;
    }

    return $MetaCopyWith<$Res>(_value.meta!, (value) {
      return _then(_value.copyWith(meta: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_NodeCopyWith<$Res> implements $NodeCopyWith<$Res> {
  factory _$$_NodeCopyWith(_$_Node value, $Res Function(_$_Node) then) =
      __$$_NodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? type,
      String? group,
      Attributes? attributes,
      List<Message>? messages,
      Meta? meta});

  @override
  $AttributesCopyWith<$Res>? get attributes;
  @override
  $MetaCopyWith<$Res>? get meta;
}

/// @nodoc
class __$$_NodeCopyWithImpl<$Res> extends _$NodeCopyWithImpl<$Res, _$_Node>
    implements _$$_NodeCopyWith<$Res> {
  __$$_NodeCopyWithImpl(_$_Node _value, $Res Function(_$_Node) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = freezed,
    Object? group = freezed,
    Object? attributes = freezed,
    Object? messages = freezed,
    Object? meta = freezed,
  }) {
    return _then(_$_Node(
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      group: freezed == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String?,
      attributes: freezed == attributes
          ? _value.attributes
          : attributes // ignore: cast_nullable_to_non_nullable
              as Attributes?,
      messages: freezed == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<Message>?,
      meta: freezed == meta
          ? _value.meta
          : meta // ignore: cast_nullable_to_non_nullable
              as Meta?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Node implements _Node {
  const _$_Node(
      {this.type,
      this.group,
      this.attributes,
      final List<Message>? messages,
      this.meta})
      : _messages = messages;

  factory _$_Node.fromJson(Map<String, dynamic> json) => _$$_NodeFromJson(json);

  @override
  final String? type;
  @override
  final String? group;
  @override
  final Attributes? attributes;
  final List<Message>? _messages;
  @override
  List<Message>? get messages {
    final value = _messages;
    if (value == null) return null;
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Meta? meta;

  @override
  String toString() {
    return 'Node(type: $type, group: $group, attributes: $attributes, messages: $messages, meta: $meta)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Node &&
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
  _$$_NodeCopyWith<_$_Node> get copyWith =>
      __$$_NodeCopyWithImpl<_$_Node>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NodeToJson(
      this,
    );
  }
}

abstract class _Node implements Node {
  const factory _Node(
      {final String? type,
      final String? group,
      final Attributes? attributes,
      final List<Message>? messages,
      final Meta? meta}) = _$_Node;

  factory _Node.fromJson(Map<String, dynamic> json) = _$_Node.fromJson;

  @override
  String? get type;
  @override
  String? get group;
  @override
  Attributes? get attributes;
  @override
  List<Message>? get messages;
  @override
  Meta? get meta;
  @override
  @JsonKey(ignore: true)
  _$$_NodeCopyWith<_$_Node> get copyWith => throw _privateConstructorUsedError;
}

Attributes _$AttributesFromJson(Map<String, dynamic> json) {
  return _Attributes.fromJson(json);
}

/// @nodoc
mixin _$Attributes {
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  dynamic get value => throw _privateConstructorUsedError;
  bool? get required => throw _privateConstructorUsedError;
  bool? get disabled => throw _privateConstructorUsedError;
  String? get nodeType => throw _privateConstructorUsedError;
  String? get autocomplete => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AttributesCopyWith<Attributes> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttributesCopyWith<$Res> {
  factory $AttributesCopyWith(
          Attributes value, $Res Function(Attributes) then) =
      _$AttributesCopyWithImpl<$Res, Attributes>;
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
class _$AttributesCopyWithImpl<$Res, $Val extends Attributes>
    implements $AttributesCopyWith<$Res> {
  _$AttributesCopyWithImpl(this._value, this._then);

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
abstract class _$$_AttributesCopyWith<$Res>
    implements $AttributesCopyWith<$Res> {
  factory _$$_AttributesCopyWith(
          _$_Attributes value, $Res Function(_$_Attributes) then) =
      __$$_AttributesCopyWithImpl<$Res>;
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
class __$$_AttributesCopyWithImpl<$Res>
    extends _$AttributesCopyWithImpl<$Res, _$_Attributes>
    implements _$$_AttributesCopyWith<$Res> {
  __$$_AttributesCopyWithImpl(
      _$_Attributes _value, $Res Function(_$_Attributes) _then)
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
    return _then(_$_Attributes(
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
class _$_Attributes implements _Attributes {
  const _$_Attributes(
      {this.name,
      this.type,
      this.value,
      this.required,
      this.disabled,
      this.nodeType,
      this.autocomplete});

  factory _$_Attributes.fromJson(Map<String, dynamic> json) =>
      _$$_AttributesFromJson(json);

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
    return 'Attributes(name: $name, type: $type, value: $value, required: $required, disabled: $disabled, nodeType: $nodeType, autocomplete: $autocomplete)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Attributes &&
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
  _$$_AttributesCopyWith<_$_Attributes> get copyWith =>
      __$$_AttributesCopyWithImpl<_$_Attributes>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AttributesToJson(
      this,
    );
  }
}

abstract class _Attributes implements Attributes {
  const factory _Attributes(
      {final String? name,
      final String? type,
      final dynamic value,
      final bool? required,
      final bool? disabled,
      final String? nodeType,
      final String? autocomplete}) = _$_Attributes;

  factory _Attributes.fromJson(Map<String, dynamic> json) =
      _$_Attributes.fromJson;

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
  _$$_AttributesCopyWith<_$_Attributes> get copyWith =>
      throw _privateConstructorUsedError;
}

Message _$MessageFromJson(Map<String, dynamic> json) {
  return _Message.fromJson(json);
}

/// @nodoc
mixin _$Message {
  int? get id => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  MessageContext? get context => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageCopyWith<Message> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageCopyWith<$Res> {
  factory $MessageCopyWith(Message value, $Res Function(Message) then) =
      _$MessageCopyWithImpl<$Res, Message>;
  @useResult
  $Res call({int? id, String? text, String? type, MessageContext? context});

  $MessageContextCopyWith<$Res>? get context;
}

/// @nodoc
class _$MessageCopyWithImpl<$Res, $Val extends Message>
    implements $MessageCopyWith<$Res> {
  _$MessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? type = freezed,
    Object? context = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as MessageContext?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MessageContextCopyWith<$Res>? get context {
    if (_value.context == null) {
      return null;
    }

    return $MessageContextCopyWith<$Res>(_value.context!, (value) {
      return _then(_value.copyWith(context: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MessageCopyWith<$Res> implements $MessageCopyWith<$Res> {
  factory _$$_MessageCopyWith(
          _$_Message value, $Res Function(_$_Message) then) =
      __$$_MessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? text, String? type, MessageContext? context});

  @override
  $MessageContextCopyWith<$Res>? get context;
}

/// @nodoc
class __$$_MessageCopyWithImpl<$Res>
    extends _$MessageCopyWithImpl<$Res, _$_Message>
    implements _$$_MessageCopyWith<$Res> {
  __$$_MessageCopyWithImpl(_$_Message _value, $Res Function(_$_Message) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? type = freezed,
    Object? context = freezed,
  }) {
    return _then(_$_Message(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as MessageContext?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Message implements _Message {
  const _$_Message({this.id, this.text, this.type, this.context});

  factory _$_Message.fromJson(Map<String, dynamic> json) =>
      _$$_MessageFromJson(json);

  @override
  final int? id;
  @override
  final String? text;
  @override
  final String? type;
  @override
  final MessageContext? context;

  @override
  String toString() {
    return 'Message(id: $id, text: $text, type: $type, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Message &&
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
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      __$$_MessageCopyWithImpl<_$_Message>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageToJson(
      this,
    );
  }
}

abstract class _Message implements Message {
  const factory _Message(
      {final int? id,
      final String? text,
      final String? type,
      final MessageContext? context}) = _$_Message;

  factory _Message.fromJson(Map<String, dynamic> json) = _$_Message.fromJson;

  @override
  int? get id;
  @override
  String? get text;
  @override
  String? get type;
  @override
  MessageContext? get context;
  @override
  @JsonKey(ignore: true)
  _$$_MessageCopyWith<_$_Message> get copyWith =>
      throw _privateConstructorUsedError;
}

MessageContext _$MessageContextFromJson(Map<String, dynamic> json) {
  return _MessageContext.fromJson(json);
}

/// @nodoc
mixin _$MessageContext {
  String? get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageContextCopyWith<MessageContext> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageContextCopyWith<$Res> {
  factory $MessageContextCopyWith(
          MessageContext value, $Res Function(MessageContext) then) =
      _$MessageContextCopyWithImpl<$Res, MessageContext>;
  @useResult
  $Res call({String? reason});
}

/// @nodoc
class _$MessageContextCopyWithImpl<$Res, $Val extends MessageContext>
    implements $MessageContextCopyWith<$Res> {
  _$MessageContextCopyWithImpl(this._value, this._then);

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
abstract class _$$_MessageContextCopyWith<$Res>
    implements $MessageContextCopyWith<$Res> {
  factory _$$_MessageContextCopyWith(
          _$_MessageContext value, $Res Function(_$_MessageContext) then) =
      __$$_MessageContextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? reason});
}

/// @nodoc
class __$$_MessageContextCopyWithImpl<$Res>
    extends _$MessageContextCopyWithImpl<$Res, _$_MessageContext>
    implements _$$_MessageContextCopyWith<$Res> {
  __$$_MessageContextCopyWithImpl(
      _$_MessageContext _value, $Res Function(_$_MessageContext) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? reason = freezed,
  }) {
    return _then(_$_MessageContext(
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageContext implements _MessageContext {
  const _$_MessageContext({this.reason});

  factory _$_MessageContext.fromJson(Map<String, dynamic> json) =>
      _$$_MessageContextFromJson(json);

  @override
  final String? reason;

  @override
  String toString() {
    return 'MessageContext(reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MessageContext &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MessageContextCopyWith<_$_MessageContext> get copyWith =>
      __$$_MessageContextCopyWithImpl<_$_MessageContext>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageContextToJson(
      this,
    );
  }
}

abstract class _MessageContext implements MessageContext {
  const factory _MessageContext({final String? reason}) = _$_MessageContext;

  factory _MessageContext.fromJson(Map<String, dynamic> json) =
      _$_MessageContext.fromJson;

  @override
  String? get reason;
  @override
  @JsonKey(ignore: true)
  _$$_MessageContextCopyWith<_$_MessageContext> get copyWith =>
      throw _privateConstructorUsedError;
}

Meta _$MetaFromJson(Map<String, dynamic> json) {
  return _Meta.fromJson(json);
}

/// @nodoc
mixin _$Meta {
  Label? get label => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MetaCopyWith<Meta> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MetaCopyWith<$Res> {
  factory $MetaCopyWith(Meta value, $Res Function(Meta) then) =
      _$MetaCopyWithImpl<$Res, Meta>;
  @useResult
  $Res call({Label? label});

  $LabelCopyWith<$Res>? get label;
}

/// @nodoc
class _$MetaCopyWithImpl<$Res, $Val extends Meta>
    implements $MetaCopyWith<$Res> {
  _$MetaCopyWithImpl(this._value, this._then);

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
              as Label?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LabelCopyWith<$Res>? get label {
    if (_value.label == null) {
      return null;
    }

    return $LabelCopyWith<$Res>(_value.label!, (value) {
      return _then(_value.copyWith(label: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MetaCopyWith<$Res> implements $MetaCopyWith<$Res> {
  factory _$$_MetaCopyWith(_$_Meta value, $Res Function(_$_Meta) then) =
      __$$_MetaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Label? label});

  @override
  $LabelCopyWith<$Res>? get label;
}

/// @nodoc
class __$$_MetaCopyWithImpl<$Res> extends _$MetaCopyWithImpl<$Res, _$_Meta>
    implements _$$_MetaCopyWith<$Res> {
  __$$_MetaCopyWithImpl(_$_Meta _value, $Res Function(_$_Meta) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = freezed,
  }) {
    return _then(_$_Meta(
      label: freezed == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as Label?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Meta implements _Meta {
  const _$_Meta({this.label});

  factory _$_Meta.fromJson(Map<String, dynamic> json) => _$$_MetaFromJson(json);

  @override
  final Label? label;

  @override
  String toString() {
    return 'Meta(label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Meta &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MetaCopyWith<_$_Meta> get copyWith =>
      __$$_MetaCopyWithImpl<_$_Meta>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MetaToJson(
      this,
    );
  }
}

abstract class _Meta implements Meta {
  const factory _Meta({final Label? label}) = _$_Meta;

  factory _Meta.fromJson(Map<String, dynamic> json) = _$_Meta.fromJson;

  @override
  Label? get label;
  @override
  @JsonKey(ignore: true)
  _$$_MetaCopyWith<_$_Meta> get copyWith => throw _privateConstructorUsedError;
}

Label _$LabelFromJson(Map<String, dynamic> json) {
  return _Label.fromJson(json);
}

/// @nodoc
mixin _$Label {
  int? get id => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  Context? get context => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LabelCopyWith<Label> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LabelCopyWith<$Res> {
  factory $LabelCopyWith(Label value, $Res Function(Label) then) =
      _$LabelCopyWithImpl<$Res, Label>;
  @useResult
  $Res call({int? id, String? text, String? type, Context? context});

  $ContextCopyWith<$Res>? get context;
}

/// @nodoc
class _$LabelCopyWithImpl<$Res, $Val extends Label>
    implements $LabelCopyWith<$Res> {
  _$LabelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? type = freezed,
    Object? context = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Context?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ContextCopyWith<$Res>? get context {
    if (_value.context == null) {
      return null;
    }

    return $ContextCopyWith<$Res>(_value.context!, (value) {
      return _then(_value.copyWith(context: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LabelCopyWith<$Res> implements $LabelCopyWith<$Res> {
  factory _$$_LabelCopyWith(_$_Label value, $Res Function(_$_Label) then) =
      __$$_LabelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? text, String? type, Context? context});

  @override
  $ContextCopyWith<$Res>? get context;
}

/// @nodoc
class __$$_LabelCopyWithImpl<$Res> extends _$LabelCopyWithImpl<$Res, _$_Label>
    implements _$$_LabelCopyWith<$Res> {
  __$$_LabelCopyWithImpl(_$_Label _value, $Res Function(_$_Label) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? text = freezed,
    Object? type = freezed,
    Object? context = freezed,
  }) {
    return _then(_$_Label(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as Context?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Label implements _Label {
  const _$_Label({this.id, this.text, this.type, this.context});

  factory _$_Label.fromJson(Map<String, dynamic> json) =>
      _$$_LabelFromJson(json);

  @override
  final int? id;
  @override
  final String? text;
  @override
  final String? type;
  @override
  final Context? context;

  @override
  String toString() {
    return 'Label(id: $id, text: $text, type: $type, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Label &&
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
  _$$_LabelCopyWith<_$_Label> get copyWith =>
      __$$_LabelCopyWithImpl<_$_Label>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LabelToJson(
      this,
    );
  }
}

abstract class _Label implements Label {
  const factory _Label(
      {final int? id,
      final String? text,
      final String? type,
      final Context? context}) = _$_Label;

  factory _Label.fromJson(Map<String, dynamic> json) = _$_Label.fromJson;

  @override
  int? get id;
  @override
  String? get text;
  @override
  String? get type;
  @override
  Context? get context;
  @override
  @JsonKey(ignore: true)
  _$$_LabelCopyWith<_$_Label> get copyWith =>
      throw _privateConstructorUsedError;
}

Context _$ContextFromJson(Map<String, dynamic> json) {
  return _Context.fromJson(json);
}

/// @nodoc
mixin _$Context {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContextCopyWith<$Res> {
  factory $ContextCopyWith(Context value, $Res Function(Context) then) =
      _$ContextCopyWithImpl<$Res, Context>;
}

/// @nodoc
class _$ContextCopyWithImpl<$Res, $Val extends Context>
    implements $ContextCopyWith<$Res> {
  _$ContextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ContextCopyWith<$Res> {
  factory _$$_ContextCopyWith(
          _$_Context value, $Res Function(_$_Context) then) =
      __$$_ContextCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ContextCopyWithImpl<$Res>
    extends _$ContextCopyWithImpl<$Res, _$_Context>
    implements _$$_ContextCopyWith<$Res> {
  __$$_ContextCopyWithImpl(_$_Context _value, $Res Function(_$_Context) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_Context implements _Context {
  const _$_Context();

  factory _$_Context.fromJson(Map<String, dynamic> json) =>
      _$$_ContextFromJson(json);

  @override
  String toString() {
    return 'Context()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Context);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContextToJson(
      this,
    );
  }
}

abstract class _Context implements Context {
  const factory _Context() = _$_Context;

  factory _Context.fromJson(Map<String, dynamic> json) = _$_Context.fromJson;
}
