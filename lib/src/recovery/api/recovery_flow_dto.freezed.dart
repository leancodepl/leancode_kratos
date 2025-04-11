// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'recovery_flow_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RecoveryFlowDto _$RecoveryFlowDtoFromJson(Map<String, dynamic> json) {
  return _RecoveryFlowDto.fromJson(json);
}

/// @nodoc
mixin _$RecoveryFlowDto {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  DateTime get issuedAt => throw _privateConstructorUsedError;
  String get requestUrl => throw _privateConstructorUsedError;
  UiDto get ui => throw _privateConstructorUsedError;

  /// Serializes this RecoveryFlowDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RecoveryFlowDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RecoveryFlowDtoCopyWith<RecoveryFlowDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecoveryFlowDtoCopyWith<$Res> {
  factory $RecoveryFlowDtoCopyWith(
          RecoveryFlowDto value, $Res Function(RecoveryFlowDto) then) =
      _$RecoveryFlowDtoCopyWithImpl<$Res, RecoveryFlowDto>;
  @useResult
  $Res call(
      {String id,
      String type,
      DateTime expiresAt,
      DateTime issuedAt,
      String requestUrl,
      UiDto ui});

  $UiDtoCopyWith<$Res> get ui;
}

/// @nodoc
class _$RecoveryFlowDtoCopyWithImpl<$Res, $Val extends RecoveryFlowDto>
    implements $RecoveryFlowDtoCopyWith<$Res> {
  _$RecoveryFlowDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RecoveryFlowDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? expiresAt = null,
    Object? issuedAt = null,
    Object? requestUrl = null,
    Object? ui = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      ui: null == ui
          ? _value.ui
          : ui // ignore: cast_nullable_to_non_nullable
              as UiDto,
    ) as $Val);
  }

  /// Create a copy of RecoveryFlowDto
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
abstract class _$$RecoveryFlowDtoImplCopyWith<$Res>
    implements $RecoveryFlowDtoCopyWith<$Res> {
  factory _$$RecoveryFlowDtoImplCopyWith(_$RecoveryFlowDtoImpl value,
          $Res Function(_$RecoveryFlowDtoImpl) then) =
      __$$RecoveryFlowDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String type,
      DateTime expiresAt,
      DateTime issuedAt,
      String requestUrl,
      UiDto ui});

  @override
  $UiDtoCopyWith<$Res> get ui;
}

/// @nodoc
class __$$RecoveryFlowDtoImplCopyWithImpl<$Res>
    extends _$RecoveryFlowDtoCopyWithImpl<$Res, _$RecoveryFlowDtoImpl>
    implements _$$RecoveryFlowDtoImplCopyWith<$Res> {
  __$$RecoveryFlowDtoImplCopyWithImpl(
      _$RecoveryFlowDtoImpl _value, $Res Function(_$RecoveryFlowDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of RecoveryFlowDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? expiresAt = null,
    Object? issuedAt = null,
    Object? requestUrl = null,
    Object? ui = null,
  }) {
    return _then(_$RecoveryFlowDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
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
      ui: null == ui
          ? _value.ui
          : ui // ignore: cast_nullable_to_non_nullable
              as UiDto,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecoveryFlowDtoImpl extends _RecoveryFlowDto {
  const _$RecoveryFlowDtoImpl(
      {required this.id,
      required this.type,
      required this.expiresAt,
      required this.issuedAt,
      required this.requestUrl,
      required this.ui})
      : super._();

  factory _$RecoveryFlowDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecoveryFlowDtoImplFromJson(json);

  @override
  final String id;
  @override
  final String type;
  @override
  final DateTime expiresAt;
  @override
  final DateTime issuedAt;
  @override
  final String requestUrl;
  @override
  final UiDto ui;

  @override
  String toString() {
    return 'RecoveryFlowDto(id: $id, type: $type, expiresAt: $expiresAt, issuedAt: $issuedAt, requestUrl: $requestUrl, ui: $ui)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RecoveryFlowDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.issuedAt, issuedAt) ||
                other.issuedAt == issuedAt) &&
            (identical(other.requestUrl, requestUrl) ||
                other.requestUrl == requestUrl) &&
            (identical(other.ui, ui) || other.ui == ui));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, type, expiresAt, issuedAt, requestUrl, ui);

  /// Create a copy of RecoveryFlowDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RecoveryFlowDtoImplCopyWith<_$RecoveryFlowDtoImpl> get copyWith =>
      __$$RecoveryFlowDtoImplCopyWithImpl<_$RecoveryFlowDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RecoveryFlowDtoImplToJson(
      this,
    );
  }
}

abstract class _RecoveryFlowDto extends RecoveryFlowDto {
  const factory _RecoveryFlowDto(
      {required final String id,
      required final String type,
      required final DateTime expiresAt,
      required final DateTime issuedAt,
      required final String requestUrl,
      required final UiDto ui}) = _$RecoveryFlowDtoImpl;
  const _RecoveryFlowDto._() : super._();

  factory _RecoveryFlowDto.fromJson(Map<String, dynamic> json) =
      _$RecoveryFlowDtoImpl.fromJson;

  @override
  String get id;
  @override
  String get type;
  @override
  DateTime get expiresAt;
  @override
  DateTime get issuedAt;
  @override
  String get requestUrl;
  @override
  UiDto get ui;

  /// Create a copy of RecoveryFlowDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RecoveryFlowDtoImplCopyWith<_$RecoveryFlowDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
