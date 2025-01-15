// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flow.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Flow _$FlowFromJson(Map<String, dynamic> json) {
  return _Flow.fromJson(json);
}

/// @nodoc
mixin _$Flow {
  String? get id => throw _privateConstructorUsedError;
  String? get verifiableAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FlowCopyWith<Flow> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlowCopyWith<$Res> {
  factory $FlowCopyWith(Flow value, $Res Function(Flow) then) =
      _$FlowCopyWithImpl<$Res, Flow>;
  @useResult
  $Res call({String? id, String? verifiableAddress});
}

/// @nodoc
class _$FlowCopyWithImpl<$Res, $Val extends Flow>
    implements $FlowCopyWith<$Res> {
  _$FlowCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? verifiableAddress = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiableAddress: freezed == verifiableAddress
          ? _value.verifiableAddress
          : verifiableAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FlowImplCopyWith<$Res> implements $FlowCopyWith<$Res> {
  factory _$$FlowImplCopyWith(
          _$FlowImpl value, $Res Function(_$FlowImpl) then) =
      __$$FlowImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? verifiableAddress});
}

/// @nodoc
class __$$FlowImplCopyWithImpl<$Res>
    extends _$FlowCopyWithImpl<$Res, _$FlowImpl>
    implements _$$FlowImplCopyWith<$Res> {
  __$$FlowImplCopyWithImpl(_$FlowImpl _value, $Res Function(_$FlowImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? verifiableAddress = freezed,
  }) {
    return _then(_$FlowImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      verifiableAddress: freezed == verifiableAddress
          ? _value.verifiableAddress
          : verifiableAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FlowImpl implements _Flow {
  const _$FlowImpl({this.id, this.verifiableAddress});

  factory _$FlowImpl.fromJson(Map<String, dynamic> json) =>
      _$$FlowImplFromJson(json);

  @override
  final String? id;
  @override
  final String? verifiableAddress;

  @override
  String toString() {
    return 'Flow(id: $id, verifiableAddress: $verifiableAddress)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlowImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.verifiableAddress, verifiableAddress) ||
                other.verifiableAddress == verifiableAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, verifiableAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FlowImplCopyWith<_$FlowImpl> get copyWith =>
      __$$FlowImplCopyWithImpl<_$FlowImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FlowImplToJson(
      this,
    );
  }
}

abstract class _Flow implements Flow {
  const factory _Flow({final String? id, final String? verifiableAddress}) =
      _$FlowImpl;

  factory _Flow.fromJson(Map<String, dynamic> json) = _$FlowImpl.fromJson;

  @override
  String? get id;
  @override
  String? get verifiableAddress;
  @override
  @JsonKey(ignore: true)
  _$$FlowImplCopyWith<_$FlowImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
