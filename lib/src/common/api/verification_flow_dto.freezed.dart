// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_flow_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

VerificationFlowDto _$VerificationFlowDtoFromJson(Map<String, dynamic> json) {
  return _VerificationFlowDto.fromJson(json);
}

/// @nodoc
mixin _$VerificationFlowDto {
  String? get active => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  DateTime? get issuedAt => throw _privateConstructorUsedError;
  String? get requestUrl => throw _privateConstructorUsedError;
  String? get returnTo => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  UiDto get ui => throw _privateConstructorUsedError;

  /// Serializes this VerificationFlowDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of VerificationFlowDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $VerificationFlowDtoCopyWith<VerificationFlowDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationFlowDtoCopyWith<$Res> {
  factory $VerificationFlowDtoCopyWith(
          VerificationFlowDto value, $Res Function(VerificationFlowDto) then) =
      _$VerificationFlowDtoCopyWithImpl<$Res, VerificationFlowDto>;
  @useResult
  $Res call(
      {String? active,
      DateTime? expiresAt,
      String id,
      DateTime? issuedAt,
      String? requestUrl,
      String? returnTo,
      String state,
      String type,
      UiDto ui});

  $UiDtoCopyWith<$Res> get ui;
}

/// @nodoc
class _$VerificationFlowDtoCopyWithImpl<$Res, $Val extends VerificationFlowDto>
    implements $VerificationFlowDtoCopyWith<$Res> {
  _$VerificationFlowDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of VerificationFlowDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = freezed,
    Object? expiresAt = freezed,
    Object? id = null,
    Object? issuedAt = freezed,
    Object? requestUrl = freezed,
    Object? returnTo = freezed,
    Object? state = null,
    Object? type = null,
    Object? ui = null,
  }) {
    return _then(_value.copyWith(
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      issuedAt: freezed == issuedAt
          ? _value.issuedAt
          : issuedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requestUrl: freezed == requestUrl
          ? _value.requestUrl
          : requestUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      returnTo: freezed == returnTo
          ? _value.returnTo
          : returnTo // ignore: cast_nullable_to_non_nullable
              as String?,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      ui: null == ui
          ? _value.ui
          : ui // ignore: cast_nullable_to_non_nullable
              as UiDto,
    ) as $Val);
  }

  /// Create a copy of VerificationFlowDto
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
abstract class _$$VerificationFlowDtoImplCopyWith<$Res>
    implements $VerificationFlowDtoCopyWith<$Res> {
  factory _$$VerificationFlowDtoImplCopyWith(_$VerificationFlowDtoImpl value,
          $Res Function(_$VerificationFlowDtoImpl) then) =
      __$$VerificationFlowDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? active,
      DateTime? expiresAt,
      String id,
      DateTime? issuedAt,
      String? requestUrl,
      String? returnTo,
      String state,
      String type,
      UiDto ui});

  @override
  $UiDtoCopyWith<$Res> get ui;
}

/// @nodoc
class __$$VerificationFlowDtoImplCopyWithImpl<$Res>
    extends _$VerificationFlowDtoCopyWithImpl<$Res, _$VerificationFlowDtoImpl>
    implements _$$VerificationFlowDtoImplCopyWith<$Res> {
  __$$VerificationFlowDtoImplCopyWithImpl(_$VerificationFlowDtoImpl _value,
      $Res Function(_$VerificationFlowDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of VerificationFlowDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? active = freezed,
    Object? expiresAt = freezed,
    Object? id = null,
    Object? issuedAt = freezed,
    Object? requestUrl = freezed,
    Object? returnTo = freezed,
    Object? state = null,
    Object? type = null,
    Object? ui = null,
  }) {
    return _then(_$VerificationFlowDtoImpl(
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      issuedAt: freezed == issuedAt
          ? _value.issuedAt
          : issuedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      requestUrl: freezed == requestUrl
          ? _value.requestUrl
          : requestUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      returnTo: freezed == returnTo
          ? _value.returnTo
          : returnTo // ignore: cast_nullable_to_non_nullable
              as String?,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      ui: null == ui
          ? _value.ui
          : ui // ignore: cast_nullable_to_non_nullable
              as UiDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$VerificationFlowDtoImpl implements _VerificationFlowDto {
  const _$VerificationFlowDtoImpl(
      {this.active,
      this.expiresAt,
      required this.id,
      this.issuedAt,
      this.requestUrl,
      this.returnTo,
      required this.state,
      required this.type,
      required this.ui});

  factory _$VerificationFlowDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerificationFlowDtoImplFromJson(json);

  @override
  final String? active;
  @override
  final DateTime? expiresAt;
  @override
  final String id;
  @override
  final DateTime? issuedAt;
  @override
  final String? requestUrl;
  @override
  final String? returnTo;
  @override
  final String state;
  @override
  final String type;
  @override
  final UiDto ui;

  @override
  String toString() {
    return 'VerificationFlowDto(active: $active, expiresAt: $expiresAt, id: $id, issuedAt: $issuedAt, requestUrl: $requestUrl, returnTo: $returnTo, state: $state, type: $type, ui: $ui)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationFlowDtoImpl &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.issuedAt, issuedAt) ||
                other.issuedAt == issuedAt) &&
            (identical(other.requestUrl, requestUrl) ||
                other.requestUrl == requestUrl) &&
            (identical(other.returnTo, returnTo) ||
                other.returnTo == returnTo) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.ui, ui) || other.ui == ui));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, active, expiresAt, id, issuedAt,
      requestUrl, returnTo, state, type, ui);

  /// Create a copy of VerificationFlowDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationFlowDtoImplCopyWith<_$VerificationFlowDtoImpl> get copyWith =>
      __$$VerificationFlowDtoImplCopyWithImpl<_$VerificationFlowDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerificationFlowDtoImplToJson(
      this,
    );
  }
}

abstract class _VerificationFlowDto implements VerificationFlowDto {
  const factory _VerificationFlowDto(
      {final String? active,
      final DateTime? expiresAt,
      required final String id,
      final DateTime? issuedAt,
      final String? requestUrl,
      final String? returnTo,
      required final String state,
      required final String type,
      required final UiDto ui}) = _$VerificationFlowDtoImpl;

  factory _VerificationFlowDto.fromJson(Map<String, dynamic> json) =
      _$VerificationFlowDtoImpl.fromJson;

  @override
  String? get active;
  @override
  DateTime? get expiresAt;
  @override
  String get id;
  @override
  DateTime? get issuedAt;
  @override
  String? get requestUrl;
  @override
  String? get returnTo;
  @override
  String get state;
  @override
  String get type;
  @override
  UiDto get ui;

  /// Create a copy of VerificationFlowDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationFlowDtoImplCopyWith<_$VerificationFlowDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
