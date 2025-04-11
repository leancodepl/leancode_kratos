// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'settings_flow_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SettingsFlowDto _$SettingsFlowDtoFromJson(Map<String, dynamic> json) {
  return _SettingsFlowDto.fromJson(json);
}

/// @nodoc
mixin _$SettingsFlowDto {
  String get id => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  DateTime get issuedAt => throw _privateConstructorUsedError;
  String get requestUrl => throw _privateConstructorUsedError;
  String? get returnTo => throw _privateConstructorUsedError;
  UiDto get ui => throw _privateConstructorUsedError;
  String? get sessionTokenExchangeCode => throw _privateConstructorUsedError;

  /// Serializes this SettingsFlowDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SettingsFlowDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SettingsFlowDtoCopyWith<SettingsFlowDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsFlowDtoCopyWith<$Res> {
  factory $SettingsFlowDtoCopyWith(
          SettingsFlowDto value, $Res Function(SettingsFlowDto) then) =
      _$SettingsFlowDtoCopyWithImpl<$Res, SettingsFlowDto>;
  @useResult
  $Res call(
      {String id,
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
class _$SettingsFlowDtoCopyWithImpl<$Res, $Val extends SettingsFlowDto>
    implements $SettingsFlowDtoCopyWith<$Res> {
  _$SettingsFlowDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SettingsFlowDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
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

  /// Create a copy of SettingsFlowDto
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
abstract class _$$SettingsFlowDtoImplCopyWith<$Res>
    implements $SettingsFlowDtoCopyWith<$Res> {
  factory _$$SettingsFlowDtoImplCopyWith(_$SettingsFlowDtoImpl value,
          $Res Function(_$SettingsFlowDtoImpl) then) =
      __$$SettingsFlowDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
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
class __$$SettingsFlowDtoImplCopyWithImpl<$Res>
    extends _$SettingsFlowDtoCopyWithImpl<$Res, _$SettingsFlowDtoImpl>
    implements _$$SettingsFlowDtoImplCopyWith<$Res> {
  __$$SettingsFlowDtoImplCopyWithImpl(
      _$SettingsFlowDtoImpl _value, $Res Function(_$SettingsFlowDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of SettingsFlowDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? type = null,
    Object? expiresAt = null,
    Object? issuedAt = null,
    Object? requestUrl = null,
    Object? returnTo = freezed,
    Object? ui = null,
    Object? sessionTokenExchangeCode = freezed,
  }) {
    return _then(_$SettingsFlowDtoImpl(
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
class _$SettingsFlowDtoImpl extends _SettingsFlowDto {
  const _$SettingsFlowDtoImpl(
      {required this.id,
      required this.type,
      required this.expiresAt,
      required this.issuedAt,
      required this.requestUrl,
      this.returnTo,
      required this.ui,
      this.sessionTokenExchangeCode})
      : super._();

  factory _$SettingsFlowDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$SettingsFlowDtoImplFromJson(json);

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
  final String? returnTo;
  @override
  final UiDto ui;
  @override
  final String? sessionTokenExchangeCode;

  @override
  String toString() {
    return 'SettingsFlowDto(id: $id, type: $type, expiresAt: $expiresAt, issuedAt: $issuedAt, requestUrl: $requestUrl, returnTo: $returnTo, ui: $ui, sessionTokenExchangeCode: $sessionTokenExchangeCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SettingsFlowDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
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
  int get hashCode => Object.hash(runtimeType, id, type, expiresAt, issuedAt,
      requestUrl, returnTo, ui, sessionTokenExchangeCode);

  /// Create a copy of SettingsFlowDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SettingsFlowDtoImplCopyWith<_$SettingsFlowDtoImpl> get copyWith =>
      __$$SettingsFlowDtoImplCopyWithImpl<_$SettingsFlowDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SettingsFlowDtoImplToJson(
      this,
    );
  }
}

abstract class _SettingsFlowDto extends SettingsFlowDto {
  const factory _SettingsFlowDto(
      {required final String id,
      required final String type,
      required final DateTime expiresAt,
      required final DateTime issuedAt,
      required final String requestUrl,
      final String? returnTo,
      required final UiDto ui,
      final String? sessionTokenExchangeCode}) = _$SettingsFlowDtoImpl;
  const _SettingsFlowDto._() : super._();

  factory _SettingsFlowDto.fromJson(Map<String, dynamic> json) =
      _$SettingsFlowDtoImpl.fromJson;

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
  String? get returnTo;
  @override
  UiDto get ui;
  @override
  String? get sessionTokenExchangeCode;

  /// Create a copy of SettingsFlowDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SettingsFlowDtoImplCopyWith<_$SettingsFlowDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
