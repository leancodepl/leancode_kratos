// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recovery_address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecoveryAddress _$RecoveryAddressFromJson(Map<String, dynamic> json) {
  return _RecoveryAddress.fromJson(json);
}

/// @nodoc
mixin _$RecoveryAddress {
  String? get id => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  String? get via => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecoveryAddressCopyWith<RecoveryAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecoveryAddressCopyWith<$Res> {
  factory $RecoveryAddressCopyWith(
          RecoveryAddress value, $Res Function(RecoveryAddress) then) =
      _$RecoveryAddressCopyWithImpl<$Res, RecoveryAddress>;
  @useResult
  $Res call(
      {String? id,
      String? value,
      String? via,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$RecoveryAddressCopyWithImpl<$Res, $Val extends RecoveryAddress>
    implements $RecoveryAddressCopyWith<$Res> {
  _$RecoveryAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? via = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      via: freezed == via
          ? _value.via
          : via // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RecoveryAddressImplCopyWith<$Res>
    implements $RecoveryAddressCopyWith<$Res> {
  factory _$$RecoveryAddressImplCopyWith(_$RecoveryAddressImpl value,
          $Res Function(_$RecoveryAddressImpl) then) =
      __$$RecoveryAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? value,
      String? via,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$RecoveryAddressImplCopyWithImpl<$Res>
    extends _$RecoveryAddressCopyWithImpl<$Res, _$RecoveryAddressImpl>
    implements _$$RecoveryAddressImplCopyWith<$Res> {
  __$$RecoveryAddressImplCopyWithImpl(
      _$RecoveryAddressImpl _value, $Res Function(_$RecoveryAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? via = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$RecoveryAddressImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      via: freezed == via
          ? _value.via
          : via // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecoveryAddressImpl implements _RecoveryAddress {
  const _$RecoveryAddressImpl(
      {this.id, this.value, this.via, this.createdAt, this.updatedAt});

  factory _$RecoveryAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecoveryAddressImplFromJson(json);

  @override
  final String? id;
  @override
  final String? value;
  @override
  final String? via;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'RecoveryAddress(id: $id, value: $value, via: $via, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecoveryAddressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.via, via) || other.via == via) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, value, via, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RecoveryAddressImplCopyWith<_$RecoveryAddressImpl> get copyWith =>
      __$$RecoveryAddressImplCopyWithImpl<_$RecoveryAddressImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecoveryAddressImplToJson(
      this,
    );
  }
}

abstract class _RecoveryAddress implements RecoveryAddress {
  const factory _RecoveryAddress(
      {final String? id,
      final String? value,
      final String? via,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$RecoveryAddressImpl;

  factory _RecoveryAddress.fromJson(Map<String, dynamic> json) =
      _$RecoveryAddressImpl.fromJson;

  @override
  String? get id;
  @override
  String? get value;
  @override
  String? get via;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$RecoveryAddressImplCopyWith<_$RecoveryAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
