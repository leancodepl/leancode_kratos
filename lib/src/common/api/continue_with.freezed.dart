// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'continue_with.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContinueWith _$ContinueWithFromJson(Map<String, dynamic> json) {
  return _ContinueWith.fromJson(json);
}

/// @nodoc
mixin _$ContinueWith {
  String? get action => throw _privateConstructorUsedError;
  Flow? get flow => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContinueWithCopyWith<ContinueWith> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContinueWithCopyWith<$Res> {
  factory $ContinueWithCopyWith(
          ContinueWith value, $Res Function(ContinueWith) then) =
      _$ContinueWithCopyWithImpl<$Res, ContinueWith>;
  @useResult
  $Res call({String? action, Flow? flow});

  $FlowCopyWith<$Res>? get flow;
}

/// @nodoc
class _$ContinueWithCopyWithImpl<$Res, $Val extends ContinueWith>
    implements $ContinueWithCopyWith<$Res> {
  _$ContinueWithCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? flow = freezed,
  }) {
    return _then(_value.copyWith(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      flow: freezed == flow
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as Flow?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $FlowCopyWith<$Res>? get flow {
    if (_value.flow == null) {
      return null;
    }

    return $FlowCopyWith<$Res>(_value.flow!, (value) {
      return _then(_value.copyWith(flow: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContinueWithImplCopyWith<$Res>
    implements $ContinueWithCopyWith<$Res> {
  factory _$$ContinueWithImplCopyWith(
          _$ContinueWithImpl value, $Res Function(_$ContinueWithImpl) then) =
      __$$ContinueWithImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? action, Flow? flow});

  @override
  $FlowCopyWith<$Res>? get flow;
}

/// @nodoc
class __$$ContinueWithImplCopyWithImpl<$Res>
    extends _$ContinueWithCopyWithImpl<$Res, _$ContinueWithImpl>
    implements _$$ContinueWithImplCopyWith<$Res> {
  __$$ContinueWithImplCopyWithImpl(
      _$ContinueWithImpl _value, $Res Function(_$ContinueWithImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? flow = freezed,
  }) {
    return _then(_$ContinueWithImpl(
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
      flow: freezed == flow
          ? _value.flow
          : flow // ignore: cast_nullable_to_non_nullable
              as Flow?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContinueWithImpl implements _ContinueWith {
  const _$ContinueWithImpl({this.action, this.flow});

  factory _$ContinueWithImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContinueWithImplFromJson(json);

  @override
  final String? action;
  @override
  final Flow? flow;

  @override
  String toString() {
    return 'ContinueWith(action: $action, flow: $flow)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContinueWithImpl &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.flow, flow) || other.flow == flow));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, action, flow);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ContinueWithImplCopyWith<_$ContinueWithImpl> get copyWith =>
      __$$ContinueWithImplCopyWithImpl<_$ContinueWithImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContinueWithImplToJson(
      this,
    );
  }
}

abstract class _ContinueWith implements ContinueWith {
  const factory _ContinueWith({final String? action, final Flow? flow}) =
      _$ContinueWithImpl;

  factory _ContinueWith.fromJson(Map<String, dynamic> json) =
      _$ContinueWithImpl.fromJson;

  @override
  String? get action;
  @override
  Flow? get flow;
  @override
  @JsonKey(ignore: true)
  _$$ContinueWithImplCopyWith<_$ContinueWithImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
