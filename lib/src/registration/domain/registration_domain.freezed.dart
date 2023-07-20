// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_domain.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegistrationFlowModel {
  String? get flowId => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  String? get method => throw _privateConstructorUsedError;
  List<RegistrationFlowField>? get fields => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationFlowModelCopyWith<RegistrationFlowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationFlowModelCopyWith<$Res> {
  factory $RegistrationFlowModelCopyWith(RegistrationFlowModel value,
          $Res Function(RegistrationFlowModel) then) =
      _$RegistrationFlowModelCopyWithImpl<$Res, RegistrationFlowModel>;
  @useResult
  $Res call(
      {String? flowId,
      DateTime? expiresAt,
      String? method,
      List<RegistrationFlowField>? fields});
}

/// @nodoc
class _$RegistrationFlowModelCopyWithImpl<$Res,
        $Val extends RegistrationFlowModel>
    implements $RegistrationFlowModelCopyWith<$Res> {
  _$RegistrationFlowModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flowId = freezed,
    Object? expiresAt = freezed,
    Object? method = freezed,
    Object? fields = freezed,
  }) {
    return _then(_value.copyWith(
      flowId: freezed == flowId
          ? _value.flowId
          : flowId // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: freezed == fields
          ? _value.fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<RegistrationFlowField>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RegistrationFlowModelCopyWith<$Res>
    implements $RegistrationFlowModelCopyWith<$Res> {
  factory _$$_RegistrationFlowModelCopyWith(_$_RegistrationFlowModel value,
          $Res Function(_$_RegistrationFlowModel) then) =
      __$$_RegistrationFlowModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? flowId,
      DateTime? expiresAt,
      String? method,
      List<RegistrationFlowField>? fields});
}

/// @nodoc
class __$$_RegistrationFlowModelCopyWithImpl<$Res>
    extends _$RegistrationFlowModelCopyWithImpl<$Res, _$_RegistrationFlowModel>
    implements _$$_RegistrationFlowModelCopyWith<$Res> {
  __$$_RegistrationFlowModelCopyWithImpl(_$_RegistrationFlowModel _value,
      $Res Function(_$_RegistrationFlowModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? flowId = freezed,
    Object? expiresAt = freezed,
    Object? method = freezed,
    Object? fields = freezed,
  }) {
    return _then(_$_RegistrationFlowModel(
      flowId: freezed == flowId
          ? _value.flowId
          : flowId // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      method: freezed == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String?,
      fields: freezed == fields
          ? _value._fields
          : fields // ignore: cast_nullable_to_non_nullable
              as List<RegistrationFlowField>?,
    ));
  }
}

/// @nodoc

class _$_RegistrationFlowModel implements _RegistrationFlowModel {
  const _$_RegistrationFlowModel(
      {this.flowId,
      this.expiresAt,
      this.method,
      final List<RegistrationFlowField>? fields})
      : _fields = fields;

  @override
  final String? flowId;
  @override
  final DateTime? expiresAt;
  @override
  final String? method;
  final List<RegistrationFlowField>? _fields;
  @override
  List<RegistrationFlowField>? get fields {
    final value = _fields;
    if (value == null) return null;
    if (_fields is EqualUnmodifiableListView) return _fields;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RegistrationFlowModel(flowId: $flowId, expiresAt: $expiresAt, method: $method, fields: $fields)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationFlowModel &&
            (identical(other.flowId, flowId) || other.flowId == flowId) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality().equals(other._fields, _fields));
  }

  @override
  int get hashCode => Object.hash(runtimeType, flowId, expiresAt, method,
      const DeepCollectionEquality().hash(_fields));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistrationFlowModelCopyWith<_$_RegistrationFlowModel> get copyWith =>
      __$$_RegistrationFlowModelCopyWithImpl<_$_RegistrationFlowModel>(
          this, _$identity);
}

abstract class _RegistrationFlowModel implements RegistrationFlowModel {
  const factory _RegistrationFlowModel(
      {final String? flowId,
      final DateTime? expiresAt,
      final String? method,
      final List<RegistrationFlowField>? fields}) = _$_RegistrationFlowModel;

  @override
  String? get flowId;
  @override
  DateTime? get expiresAt;
  @override
  String? get method;
  @override
  List<RegistrationFlowField>? get fields;
  @override
  @JsonKey(ignore: true)
  _$$_RegistrationFlowModelCopyWith<_$_RegistrationFlowModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$RegistrationFlowField {
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  bool? get requiredField => throw _privateConstructorUsedError;
  bool? get disabled => throw _privateConstructorUsedError;
  int? get labelId => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RegistrationFlowFieldCopyWith<RegistrationFlowField> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationFlowFieldCopyWith<$Res> {
  factory $RegistrationFlowFieldCopyWith(RegistrationFlowField value,
          $Res Function(RegistrationFlowField) then) =
      _$RegistrationFlowFieldCopyWithImpl<$Res, RegistrationFlowField>;
  @useResult
  $Res call(
      {String? name,
      String? type,
      bool? requiredField,
      bool? disabled,
      int? labelId});
}

/// @nodoc
class _$RegistrationFlowFieldCopyWithImpl<$Res,
        $Val extends RegistrationFlowField>
    implements $RegistrationFlowFieldCopyWith<$Res> {
  _$RegistrationFlowFieldCopyWithImpl(this._value, this._then);

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
abstract class _$$_RegistrationFlowFieldCopyWith<$Res>
    implements $RegistrationFlowFieldCopyWith<$Res> {
  factory _$$_RegistrationFlowFieldCopyWith(_$_RegistrationFlowField value,
          $Res Function(_$_RegistrationFlowField) then) =
      __$$_RegistrationFlowFieldCopyWithImpl<$Res>;
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
class __$$_RegistrationFlowFieldCopyWithImpl<$Res>
    extends _$RegistrationFlowFieldCopyWithImpl<$Res, _$_RegistrationFlowField>
    implements _$$_RegistrationFlowFieldCopyWith<$Res> {
  __$$_RegistrationFlowFieldCopyWithImpl(_$_RegistrationFlowField _value,
      $Res Function(_$_RegistrationFlowField) _then)
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
    return _then(_$_RegistrationFlowField(
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

class _$_RegistrationFlowField implements _RegistrationFlowField {
  const _$_RegistrationFlowField(
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
    return 'RegistrationFlowField(name: $name, type: $type, requiredField: $requiredField, disabled: $disabled, labelId: $labelId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationFlowField &&
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
  _$$_RegistrationFlowFieldCopyWith<_$_RegistrationFlowField> get copyWith =>
      __$$_RegistrationFlowFieldCopyWithImpl<_$_RegistrationFlowField>(
          this, _$identity);
}

abstract class _RegistrationFlowField implements RegistrationFlowField {
  const factory _RegistrationFlowField(
      {final String? name,
      final String? type,
      final bool? requiredField,
      final bool? disabled,
      final int? labelId}) = _$_RegistrationFlowField;

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
  _$$_RegistrationFlowFieldCopyWith<_$_RegistrationFlowField> get copyWith =>
      throw _privateConstructorUsedError;
}
