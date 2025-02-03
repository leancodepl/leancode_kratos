// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginErrorResponse _$LoginErrorResponseFromJson(Map<String, dynamic> json) {
  return _LoginErrorResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginErrorResponse {
  String get id => throw _privateConstructorUsedError;
  dynamic get oauth2LoginChallenge => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  DateTime get issuedAt => throw _privateConstructorUsedError;
  String get requestUrl => throw _privateConstructorUsedError;
  UiDto get ui => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  bool get refresh => throw _privateConstructorUsedError;
  String get requestedAal => throw _privateConstructorUsedError;

  /// Serializes this LoginErrorResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginErrorResponseCopyWith<LoginErrorResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginErrorResponseCopyWith<$Res> {
  factory $LoginErrorResponseCopyWith(
          LoginErrorResponse value, $Res Function(LoginErrorResponse) then) =
      _$LoginErrorResponseCopyWithImpl<$Res, LoginErrorResponse>;
  @useResult
  $Res call(
      {String id,
      dynamic oauth2LoginChallenge,
      String type,
      DateTime expiresAt,
      DateTime issuedAt,
      String requestUrl,
      UiDto ui,
      DateTime createdAt,
      DateTime updatedAt,
      bool refresh,
      String requestedAal});

  $UiDtoCopyWith<$Res> get ui;
}

/// @nodoc
class _$LoginErrorResponseCopyWithImpl<$Res, $Val extends LoginErrorResponse>
    implements $LoginErrorResponseCopyWith<$Res> {
  _$LoginErrorResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? oauth2LoginChallenge = freezed,
    Object? type = null,
    Object? expiresAt = null,
    Object? issuedAt = null,
    Object? requestUrl = null,
    Object? ui = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? refresh = null,
    Object? requestedAal = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      oauth2LoginChallenge: freezed == oauth2LoginChallenge
          ? _value.oauth2LoginChallenge
          : oauth2LoginChallenge // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool,
      requestedAal: null == requestedAal
          ? _value.requestedAal
          : requestedAal // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of LoginErrorResponse
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
abstract class _$$LoginErrorResponseImplCopyWith<$Res>
    implements $LoginErrorResponseCopyWith<$Res> {
  factory _$$LoginErrorResponseImplCopyWith(_$LoginErrorResponseImpl value,
          $Res Function(_$LoginErrorResponseImpl) then) =
      __$$LoginErrorResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      dynamic oauth2LoginChallenge,
      String type,
      DateTime expiresAt,
      DateTime issuedAt,
      String requestUrl,
      UiDto ui,
      DateTime createdAt,
      DateTime updatedAt,
      bool refresh,
      String requestedAal});

  @override
  $UiDtoCopyWith<$Res> get ui;
}

/// @nodoc
class __$$LoginErrorResponseImplCopyWithImpl<$Res>
    extends _$LoginErrorResponseCopyWithImpl<$Res, _$LoginErrorResponseImpl>
    implements _$$LoginErrorResponseImplCopyWith<$Res> {
  __$$LoginErrorResponseImplCopyWithImpl(_$LoginErrorResponseImpl _value,
      $Res Function(_$LoginErrorResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? oauth2LoginChallenge = freezed,
    Object? type = null,
    Object? expiresAt = null,
    Object? issuedAt = null,
    Object? requestUrl = null,
    Object? ui = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? refresh = null,
    Object? requestedAal = null,
  }) {
    return _then(_$LoginErrorResponseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      oauth2LoginChallenge: freezed == oauth2LoginChallenge
          ? _value.oauth2LoginChallenge
          : oauth2LoginChallenge // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      refresh: null == refresh
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as bool,
      requestedAal: null == requestedAal
          ? _value.requestedAal
          : requestedAal // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginErrorResponseImpl implements _LoginErrorResponse {
  const _$LoginErrorResponseImpl(
      {required this.id,
      required this.oauth2LoginChallenge,
      required this.type,
      required this.expiresAt,
      required this.issuedAt,
      required this.requestUrl,
      required this.ui,
      required this.createdAt,
      required this.updatedAt,
      required this.refresh,
      required this.requestedAal});

  factory _$LoginErrorResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginErrorResponseImplFromJson(json);

  @override
  final String id;
  @override
  final dynamic oauth2LoginChallenge;
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
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final bool refresh;
  @override
  final String requestedAal;

  @override
  String toString() {
    return 'LoginErrorResponse(id: $id, oauth2LoginChallenge: $oauth2LoginChallenge, type: $type, expiresAt: $expiresAt, issuedAt: $issuedAt, requestUrl: $requestUrl, ui: $ui, createdAt: $createdAt, updatedAt: $updatedAt, refresh: $refresh, requestedAal: $requestedAal)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginErrorResponseImpl &&
            (identical(other.id, id) || other.id == id) &&
            const DeepCollectionEquality()
                .equals(other.oauth2LoginChallenge, oauth2LoginChallenge) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.issuedAt, issuedAt) ||
                other.issuedAt == issuedAt) &&
            (identical(other.requestUrl, requestUrl) ||
                other.requestUrl == requestUrl) &&
            (identical(other.ui, ui) || other.ui == ui) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.refresh, refresh) || other.refresh == refresh) &&
            (identical(other.requestedAal, requestedAal) ||
                other.requestedAal == requestedAal));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      const DeepCollectionEquality().hash(oauth2LoginChallenge),
      type,
      expiresAt,
      issuedAt,
      requestUrl,
      ui,
      createdAt,
      updatedAt,
      refresh,
      requestedAal);

  /// Create a copy of LoginErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginErrorResponseImplCopyWith<_$LoginErrorResponseImpl> get copyWith =>
      __$$LoginErrorResponseImplCopyWithImpl<_$LoginErrorResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginErrorResponseImplToJson(
      this,
    );
  }
}

abstract class _LoginErrorResponse implements LoginErrorResponse {
  const factory _LoginErrorResponse(
      {required final String id,
      required final dynamic oauth2LoginChallenge,
      required final String type,
      required final DateTime expiresAt,
      required final DateTime issuedAt,
      required final String requestUrl,
      required final UiDto ui,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final bool refresh,
      required final String requestedAal}) = _$LoginErrorResponseImpl;

  factory _LoginErrorResponse.fromJson(Map<String, dynamic> json) =
      _$LoginErrorResponseImpl.fromJson;

  @override
  String get id;
  @override
  dynamic get oauth2LoginChallenge;
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
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  bool get refresh;
  @override
  String get requestedAal;

  /// Create a copy of LoginErrorResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginErrorResponseImplCopyWith<_$LoginErrorResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
