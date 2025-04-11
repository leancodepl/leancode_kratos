// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'passkey.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$Passkey {
  String get id => throw _privateConstructorUsedError;
  DateTime get addedAt => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;

  /// Create a copy of Passkey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PasskeyCopyWith<Passkey> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasskeyCopyWith<$Res> {
  factory $PasskeyCopyWith(Passkey value, $Res Function(Passkey) then) =
      _$PasskeyCopyWithImpl<$Res, Passkey>;
  @useResult
  $Res call({String id, DateTime addedAt, String displayName});
}

/// @nodoc
class _$PasskeyCopyWithImpl<$Res, $Val extends Passkey>
    implements $PasskeyCopyWith<$Res> {
  _$PasskeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Passkey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? addedAt = null,
    Object? displayName = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PasskeyImplCopyWith<$Res> implements $PasskeyCopyWith<$Res> {
  factory _$$PasskeyImplCopyWith(
          _$PasskeyImpl value, $Res Function(_$PasskeyImpl) then) =
      __$$PasskeyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, DateTime addedAt, String displayName});
}

/// @nodoc
class __$$PasskeyImplCopyWithImpl<$Res>
    extends _$PasskeyCopyWithImpl<$Res, _$PasskeyImpl>
    implements _$$PasskeyImplCopyWith<$Res> {
  __$$PasskeyImplCopyWithImpl(
      _$PasskeyImpl _value, $Res Function(_$PasskeyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Passkey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? addedAt = null,
    Object? displayName = null,
  }) {
    return _then(_$PasskeyImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      addedAt: null == addedAt
          ? _value.addedAt
          : addedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PasskeyImpl implements _Passkey {
  const _$PasskeyImpl(
      {required this.id, required this.addedAt, required this.displayName});

  @override
  final String id;
  @override
  final DateTime addedAt;
  @override
  final String displayName;

  @override
  String toString() {
    return 'Passkey(id: $id, addedAt: $addedAt, displayName: $displayName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PasskeyImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.addedAt, addedAt) || other.addedAt == addedAt) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, addedAt, displayName);

  /// Create a copy of Passkey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PasskeyImplCopyWith<_$PasskeyImpl> get copyWith =>
      __$$PasskeyImplCopyWithImpl<_$PasskeyImpl>(this, _$identity);
}

abstract class _Passkey implements Passkey {
  const factory _Passkey(
      {required final String id,
      required final DateTime addedAt,
      required final String displayName}) = _$PasskeyImpl;

  @override
  String get id;
  @override
  DateTime get addedAt;
  @override
  String get displayName;

  /// Create a copy of Passkey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PasskeyImplCopyWith<_$PasskeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
