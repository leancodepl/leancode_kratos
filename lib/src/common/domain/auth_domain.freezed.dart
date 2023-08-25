// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthFlowModel {
  String get id => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  String? get sessionTokenExchangeCode => throw _privateConstructorUsedError;
  List<AuthFlowField>? get fields => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthFlowModelCopyWith<AuthFlowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFlowModelCopyWith<$Res> {
  factory $AuthFlowModelCopyWith(
          AuthFlowModel value, $Res Function(AuthFlowModel) then) =
      _$AuthFlowModelCopyWithImpl<$Res, AuthFlowModel>;
  @useResult
  $Res call(
      {String id,
      DateTime expiresAt,
      String? sessionTokenExchangeCode,
      List<AuthFlowField>? fields});
}

/// @nodoc
class _$AuthFlowModelCopyWithImpl<$Res, $Val extends AuthFlowModel>
    implements $AuthFlowModelCopyWith<$Res> {
  _$AuthFlowModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? expiresAt = null,
    Object? sessionTokenExchangeCode = freezed,
    Object? fields = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sessionTokenExchangeCode: freezed == sessionTokenExchangeCode
          ? _value.sessionTokenExchangeCode
          : sessionTokenExchangeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<AuthFlowField>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthFlowModelCopyWith<$Res>
    implements $AuthFlowModelCopyWith<$Res> {
  factory _$$_AuthFlowModelCopyWith(
          _$_AuthFlowModel value, $Res Function(_$_AuthFlowModel) then) =
      __$$_AuthFlowModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      DateTime expiresAt,
      String? sessionTokenExchangeCode,
      List<AuthFlowField>? fields});
}

/// @nodoc
class __$$_AuthFlowModelCopyWithImpl<$Res>
    extends _$AuthFlowModelCopyWithImpl<$Res, _$_AuthFlowModel>
    implements _$$_AuthFlowModelCopyWith<$Res> {
  __$$_AuthFlowModelCopyWithImpl(
      _$_AuthFlowModel _value, $Res Function(_$_AuthFlowModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? expiresAt = null,
    Object? sessionTokenExchangeCode = freezed,
    Object? fields = freezed,
  }) {
    return _then(_$_AuthFlowModel(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      sessionTokenExchangeCode: freezed == sessionTokenExchangeCode
          ? _value.sessionTokenExchangeCode
          : sessionTokenExchangeCode // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: freezed == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<AuthFlowField>?,
    ));
  }
}

/// @nodoc

class _$_AuthFlowModel implements _AuthFlowModel {
  const _$_AuthFlowModel(
      {required this.id,
      required this.expiresAt,
      this.sessionTokenExchangeCode,
      final List<AuthFlowField>? fields})
      : _fields = fields;

  @override
  final String id;
  @override
  final DateTime expiresAt;
  @override
  final String? sessionTokenExchangeCode;
  final List<AuthFlowField>? _fields;
  @override
  List<AuthFlowField>? get fields {
    final value = _fields;
    if (value == null) return null;
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AuthFlowModel(id: $id, expiresAt: $expiresAt, sessionTokenExchangeCode: $sessionTokenExchangeCode, fields: $fields)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthFlowModel &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(
                    other.sessionTokenExchangeCode, sessionTokenExchangeCode) ||
                other.sessionTokenExchangeCode == sessionTokenExchangeCode) &&
            const DeepCollectionEquality().equals(other._fields, _fields));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, expiresAt,
      sessionTokenExchangeCode, const DeepCollectionEquality().hash(_fields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthFlowModelCopyWith<_$_AuthFlowModel> get copyWith =>
      __$$_AuthFlowModelCopyWithImpl<_$_AuthFlowModel>(this, _$identity);
}

abstract class _AuthFlowModel implements AuthFlowModel {
  const factory _AuthFlowModel(
      {required final String id,
      required final DateTime expiresAt,
      final String? sessionTokenExchangeCode,
      final List<AuthFlowField>? fields}) = _$_AuthFlowModel;

  @override
  String get id;
  @override
  DateTime get expiresAt;
  @override
  String? get sessionTokenExchangeCode;
  @override
  List<AuthFlowField>? get fields;
  @override
  @JsonKey(ignore: true)
  _$$_AuthFlowModelCopyWith<_$_AuthFlowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthFlowField {
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  bool? get requiredField => throw _privateConstructorUsedError;
  bool? get disabled => throw _privateConstructorUsedError;
  int? get labelId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthFlowFieldCopyWith<AuthFlowField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFlowFieldCopyWith<$Res> {
  factory $AuthFlowFieldCopyWith(
          AuthFlowField value, $Res Function(AuthFlowField) then) =
      _$AuthFlowFieldCopyWithImpl<$Res, AuthFlowField>;
  @useResult
  $Res call(
      {String? name,
      String? type,
      bool? requiredField,
      bool? disabled,
      int? labelId});
}

/// @nodoc
class _$AuthFlowFieldCopyWithImpl<$Res, $Val extends AuthFlowField>
    implements $AuthFlowFieldCopyWith<$Res> {
  _$AuthFlowFieldCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? requiredField = freezed,
    Object? disabled = freezed,
    Object? labelId = freezed,
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
      requiredField: freezed == requiredField
          ? _value.requiredField
          : requiredField // ignore: cast_nullable_to_non_nullable
              as bool?,
      disabled: freezed == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      labelId: freezed == labelId
          ? _value.labelId
          : labelId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AuthFlowFieldCopyWith<$Res>
    implements $AuthFlowFieldCopyWith<$Res> {
  factory _$$_AuthFlowFieldCopyWith(
          _$_AuthFlowField value, $Res Function(_$_AuthFlowField) then) =
      __$$_AuthFlowFieldCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? type,
      bool? requiredField,
      bool? disabled,
      int? labelId});
}

/// @nodoc
class __$$_AuthFlowFieldCopyWithImpl<$Res>
    extends _$AuthFlowFieldCopyWithImpl<$Res, _$_AuthFlowField>
    implements _$$_AuthFlowFieldCopyWith<$Res> {
  __$$_AuthFlowFieldCopyWithImpl(
      _$_AuthFlowField _value, $Res Function(_$_AuthFlowField) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? requiredField = freezed,
    Object? disabled = freezed,
    Object? labelId = freezed,
  }) {
    return _then(_$_AuthFlowField(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      requiredField: freezed == requiredField
          ? _value.requiredField
          : requiredField // ignore: cast_nullable_to_non_nullable
              as bool?,
      disabled: freezed == disabled
          ? _value.disabled
          : disabled // ignore: cast_nullable_to_non_nullable
              as bool?,
      labelId: freezed == labelId
          ? _value.labelId
          : labelId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$_AuthFlowField implements _AuthFlowField {
  const _$_AuthFlowField(
      {this.name, this.type, this.requiredField, this.disabled, this.labelId});

  @override
  final String? name;
  @override
  final String? type;
  @override
  final bool? requiredField;
  @override
  final bool? disabled;
  @override
  final int? labelId;

  @override
  String toString() {
    return 'AuthFlowField(name: $name, type: $type, requiredField: $requiredField, disabled: $disabled, labelId: $labelId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthFlowField &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.requiredField, requiredField) ||
                other.requiredField == requiredField) &&
            (identical(other.disabled, disabled) ||
                other.disabled == disabled) &&
            (identical(other.labelId, labelId) || other.labelId == labelId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, name, type, requiredField, disabled, labelId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthFlowFieldCopyWith<_$_AuthFlowField> get copyWith =>
      __$$_AuthFlowFieldCopyWithImpl<_$_AuthFlowField>(this, _$identity);
}

abstract class _AuthFlowField implements AuthFlowField {
  const factory _AuthFlowField(
      {final String? name,
      final String? type,
      final bool? requiredField,
      final bool? disabled,
      final int? labelId}) = _$_AuthFlowField;

  @override
  String? get name;
  @override
  String? get type;
  @override
  bool? get requiredField;
  @override
  bool? get disabled;
  @override
  int? get labelId;
  @override
  @JsonKey(ignore: true)
  _$$_AuthFlowFieldCopyWith<_$_AuthFlowField> get copyWith =>
      throw _privateConstructorUsedError;
}
