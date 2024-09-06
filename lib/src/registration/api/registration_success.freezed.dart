// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'registration_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RegistrationSuccessResponse _$RegistrationSuccessResponseFromJson(
    Map<String, dynamic> json) {
  return _RegistrationSuccessResponse.fromJson(json);
}

/// @nodoc
mixin _$RegistrationSuccessResponse {
  List<ContinueWith>? get continueWith => throw _privateConstructorUsedError;
  Identity? get identity => throw _privateConstructorUsedError;
  Session? get session => throw _privateConstructorUsedError;
  String? get sessionToken =>
      throw _privateConstructorUsedError; // Undocumented response for linking accounts
  String? get id => throw _privateConstructorUsedError;
  String? get oauth2LoginChallenge => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  DateTime? get expiresAt => throw _privateConstructorUsedError;
  DateTime? get issuedAt => throw _privateConstructorUsedError;
  String? get requestUrl => throw _privateConstructorUsedError;
  String? get returnTo => throw _privateConstructorUsedError;
  UiDto? get ui => throw _privateConstructorUsedError;
  String? get sessionTokenExchangeCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationSuccessResponseCopyWith<RegistrationSuccessResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationSuccessResponseCopyWith<$Res> {
  factory $RegistrationSuccessResponseCopyWith(
          RegistrationSuccessResponse value,
          $Res Function(RegistrationSuccessResponse) then) =
      _$RegistrationSuccessResponseCopyWithImpl<$Res,
          RegistrationSuccessResponse>;
  @useResult
  $Res call(
      {List<ContinueWith>? continueWith,
      Identity? identity,
      Session? session,
      String? sessionToken,
      String? id,
      String? oauth2LoginChallenge,
      String? type,
      DateTime? expiresAt,
      DateTime? issuedAt,
      String? requestUrl,
      String? returnTo,
      UiDto? ui,
      String? sessionTokenExchangeCode});

  $IdentityCopyWith<$Res>? get identity;
  $SessionCopyWith<$Res>? get session;
  $UiDtoCopyWith<$Res>? get ui;
}

/// @nodoc
class _$RegistrationSuccessResponseCopyWithImpl<$Res,
        $Val extends RegistrationSuccessResponse>
    implements $RegistrationSuccessResponseCopyWith<$Res> {
  _$RegistrationSuccessResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? continueWith = freezed,
    Object? identity = freezed,
    Object? session = freezed,
    Object? sessionToken = freezed,
    Object? id = freezed,
    Object? oauth2LoginChallenge = freezed,
    Object? type = freezed,
    Object? expiresAt = freezed,
    Object? issuedAt = freezed,
    Object? requestUrl = freezed,
    Object? returnTo = freezed,
    Object? ui = freezed,
    Object? sessionTokenExchangeCode = freezed,
  }) {
    return _then(_value.copyWith(
      continueWith: freezed == continueWith
          ? _value.continueWith
          : continueWith // ignore: cast_nullable_to_non_nullable
              as List<ContinueWith>?,
      identity: freezed == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as Identity?,
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session?,
      sessionToken: freezed == sessionToken
          ? _value.sessionToken
          : sessionToken // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      oauth2LoginChallenge: freezed == oauth2LoginChallenge
          ? _value.oauth2LoginChallenge
          : oauth2LoginChallenge // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      ui: freezed == ui
          ? _value.ui
          : ui // ignore: cast_nullable_to_non_nullable
              as UiDto?,
      sessionTokenExchangeCode: freezed == sessionTokenExchangeCode
          ? _value.sessionTokenExchangeCode
          : sessionTokenExchangeCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IdentityCopyWith<$Res>? get identity {
    if (_value.identity == null) {
      return null;
    }

    return $IdentityCopyWith<$Res>(_value.identity!, (value) {
      return _then(_value.copyWith(identity: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $SessionCopyWith<$Res>? get session {
    if (_value.session == null) {
      return null;
    }

    return $SessionCopyWith<$Res>(_value.session!, (value) {
      return _then(_value.copyWith(session: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UiDtoCopyWith<$Res>? get ui {
    if (_value.ui == null) {
      return null;
    }

    return $UiDtoCopyWith<$Res>(_value.ui!, (value) {
      return _then(_value.copyWith(ui: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegistrationSuccessResponseImplCopyWith<$Res>
    implements $RegistrationSuccessResponseCopyWith<$Res> {
  factory _$$RegistrationSuccessResponseImplCopyWith(
          _$RegistrationSuccessResponseImpl value,
          $Res Function(_$RegistrationSuccessResponseImpl) then) =
      __$$RegistrationSuccessResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ContinueWith>? continueWith,
      Identity? identity,
      Session? session,
      String? sessionToken,
      String? id,
      String? oauth2LoginChallenge,
      String? type,
      DateTime? expiresAt,
      DateTime? issuedAt,
      String? requestUrl,
      String? returnTo,
      UiDto? ui,
      String? sessionTokenExchangeCode});

  @override
  $IdentityCopyWith<$Res>? get identity;
  @override
  $SessionCopyWith<$Res>? get session;
  @override
  $UiDtoCopyWith<$Res>? get ui;
}

/// @nodoc
class __$$RegistrationSuccessResponseImplCopyWithImpl<$Res>
    extends _$RegistrationSuccessResponseCopyWithImpl<$Res,
        _$RegistrationSuccessResponseImpl>
    implements _$$RegistrationSuccessResponseImplCopyWith<$Res> {
  __$$RegistrationSuccessResponseImplCopyWithImpl(
      _$RegistrationSuccessResponseImpl _value,
      $Res Function(_$RegistrationSuccessResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? continueWith = freezed,
    Object? identity = freezed,
    Object? session = freezed,
    Object? sessionToken = freezed,
    Object? id = freezed,
    Object? oauth2LoginChallenge = freezed,
    Object? type = freezed,
    Object? expiresAt = freezed,
    Object? issuedAt = freezed,
    Object? requestUrl = freezed,
    Object? returnTo = freezed,
    Object? ui = freezed,
    Object? sessionTokenExchangeCode = freezed,
  }) {
    return _then(_$RegistrationSuccessResponseImpl(
      continueWith: freezed == continueWith
          ? _value._continueWith
          : continueWith // ignore: cast_nullable_to_non_nullable
              as List<ContinueWith>?,
      identity: freezed == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as Identity?,
      session: freezed == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session?,
      sessionToken: freezed == sessionToken
          ? _value.sessionToken
          : sessionToken // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      oauth2LoginChallenge: freezed == oauth2LoginChallenge
          ? _value.oauth2LoginChallenge
          : oauth2LoginChallenge // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      expiresAt: freezed == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      ui: freezed == ui
          ? _value.ui
          : ui // ignore: cast_nullable_to_non_nullable
              as UiDto?,
      sessionTokenExchangeCode: freezed == sessionTokenExchangeCode
          ? _value.sessionTokenExchangeCode
          : sessionTokenExchangeCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistrationSuccessResponseImpl extends _RegistrationSuccessResponse {
  const _$RegistrationSuccessResponseImpl(
      {final List<ContinueWith>? continueWith,
      this.identity,
      this.session,
      this.sessionToken,
      this.id,
      this.oauth2LoginChallenge,
      this.type,
      this.expiresAt,
      this.issuedAt,
      this.requestUrl,
      this.returnTo,
      this.ui,
      this.sessionTokenExchangeCode})
      : _continueWith = continueWith,
        super._();

  factory _$RegistrationSuccessResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RegistrationSuccessResponseImplFromJson(json);

  final List<ContinueWith>? _continueWith;
  @override
  List<ContinueWith>? get continueWith {
    final value = _continueWith;
    if (value == null) return null;
    if (_continueWith is EqualUnmodifiableListView) return _continueWith;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Identity? identity;
  @override
  final Session? session;
  @override
  final String? sessionToken;
// Undocumented response for linking accounts
  @override
  final String? id;
  @override
  final String? oauth2LoginChallenge;
  @override
  final String? type;
  @override
  final DateTime? expiresAt;
  @override
  final DateTime? issuedAt;
  @override
  final String? requestUrl;
  @override
  final String? returnTo;
  @override
  final UiDto? ui;
  @override
  final String? sessionTokenExchangeCode;

  @override
  String toString() {
    return 'RegistrationSuccessResponse(continueWith: $continueWith, identity: $identity, session: $session, sessionToken: $sessionToken, id: $id, oauth2LoginChallenge: $oauth2LoginChallenge, type: $type, expiresAt: $expiresAt, issuedAt: $issuedAt, requestUrl: $requestUrl, returnTo: $returnTo, ui: $ui, sessionTokenExchangeCode: $sessionTokenExchangeCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationSuccessResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._continueWith, _continueWith) &&
            (identical(other.identity, identity) ||
                other.identity == identity) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.sessionToken, sessionToken) ||
                other.sessionToken == sessionToken) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.oauth2LoginChallenge, oauth2LoginChallenge) ||
                other.oauth2LoginChallenge == oauth2LoginChallenge) &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_continueWith),
      identity,
      session,
      sessionToken,
      id,
      oauth2LoginChallenge,
      type,
      expiresAt,
      issuedAt,
      requestUrl,
      returnTo,
      ui,
      sessionTokenExchangeCode);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationSuccessResponseImplCopyWith<_$RegistrationSuccessResponseImpl>
      get copyWith => __$$RegistrationSuccessResponseImplCopyWithImpl<
          _$RegistrationSuccessResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationSuccessResponseImplToJson(
      this,
    );
  }
}

abstract class _RegistrationSuccessResponse
    extends RegistrationSuccessResponse {
  const factory _RegistrationSuccessResponse(
          {final List<ContinueWith>? continueWith,
          final Identity? identity,
          final Session? session,
          final String? sessionToken,
          final String? id,
          final String? oauth2LoginChallenge,
          final String? type,
          final DateTime? expiresAt,
          final DateTime? issuedAt,
          final String? requestUrl,
          final String? returnTo,
          final UiDto? ui,
          final String? sessionTokenExchangeCode}) =
      _$RegistrationSuccessResponseImpl;
  const _RegistrationSuccessResponse._() : super._();

  factory _RegistrationSuccessResponse.fromJson(Map<String, dynamic> json) =
      _$RegistrationSuccessResponseImpl.fromJson;

  @override
  List<ContinueWith>? get continueWith;
  @override
  Identity? get identity;
  @override
  Session? get session;
  @override
  String? get sessionToken;
  @override // Undocumented response for linking accounts
  String? get id;
  @override
  String? get oauth2LoginChallenge;
  @override
  String? get type;
  @override
  DateTime? get expiresAt;
  @override
  DateTime? get issuedAt;
  @override
  String? get requestUrl;
  @override
  String? get returnTo;
  @override
  UiDto? get ui;
  @override
  String? get sessionTokenExchangeCode;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationSuccessResponseImplCopyWith<_$RegistrationSuccessResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

RegistrationBrowserLocationChangeRequiredResponse
    _$RegistrationBrowserLocationChangeRequiredResponseFromJson(
        Map<String, dynamic> json) {
  return _RegistrationBrowserLocationChangeRequiredResponse.fromJson(json);
}

/// @nodoc
mixin _$RegistrationBrowserLocationChangeRequiredResponse {
  String? get redirectBrowserTo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegistrationBrowserLocationChangeRequiredResponseCopyWith<
          RegistrationBrowserLocationChangeRequiredResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegistrationBrowserLocationChangeRequiredResponseCopyWith<
    $Res> {
  factory $RegistrationBrowserLocationChangeRequiredResponseCopyWith(
          RegistrationBrowserLocationChangeRequiredResponse value,
          $Res Function(RegistrationBrowserLocationChangeRequiredResponse)
              then) =
      _$RegistrationBrowserLocationChangeRequiredResponseCopyWithImpl<$Res,
          RegistrationBrowserLocationChangeRequiredResponse>;
  @useResult
  $Res call({String? redirectBrowserTo});
}

/// @nodoc
class _$RegistrationBrowserLocationChangeRequiredResponseCopyWithImpl<$Res,
        $Val extends RegistrationBrowserLocationChangeRequiredResponse>
    implements
        $RegistrationBrowserLocationChangeRequiredResponseCopyWith<$Res> {
  _$RegistrationBrowserLocationChangeRequiredResponseCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redirectBrowserTo = freezed,
  }) {
    return _then(_value.copyWith(
      redirectBrowserTo: freezed == redirectBrowserTo
          ? _value.redirectBrowserTo
          : redirectBrowserTo // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegistrationBrowserLocationChangeRequiredResponseImplCopyWith<
        $Res>
    implements
        $RegistrationBrowserLocationChangeRequiredResponseCopyWith<$Res> {
  factory _$$RegistrationBrowserLocationChangeRequiredResponseImplCopyWith(
          _$RegistrationBrowserLocationChangeRequiredResponseImpl value,
          $Res Function(_$RegistrationBrowserLocationChangeRequiredResponseImpl)
              then) =
      __$$RegistrationBrowserLocationChangeRequiredResponseImplCopyWithImpl<
          $Res>;
  @override
  @useResult
  $Res call({String? redirectBrowserTo});
}

/// @nodoc
class __$$RegistrationBrowserLocationChangeRequiredResponseImplCopyWithImpl<
        $Res>
    extends _$RegistrationBrowserLocationChangeRequiredResponseCopyWithImpl<
        $Res, _$RegistrationBrowserLocationChangeRequiredResponseImpl>
    implements
        _$$RegistrationBrowserLocationChangeRequiredResponseImplCopyWith<$Res> {
  __$$RegistrationBrowserLocationChangeRequiredResponseImplCopyWithImpl(
      _$RegistrationBrowserLocationChangeRequiredResponseImpl _value,
      $Res Function(_$RegistrationBrowserLocationChangeRequiredResponseImpl)
          _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redirectBrowserTo = freezed,
  }) {
    return _then(_$RegistrationBrowserLocationChangeRequiredResponseImpl(
      redirectBrowserTo: freezed == redirectBrowserTo
          ? _value.redirectBrowserTo
          : redirectBrowserTo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RegistrationBrowserLocationChangeRequiredResponseImpl
    implements _RegistrationBrowserLocationChangeRequiredResponse {
  const _$RegistrationBrowserLocationChangeRequiredResponseImpl(
      {this.redirectBrowserTo});

  factory _$RegistrationBrowserLocationChangeRequiredResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$RegistrationBrowserLocationChangeRequiredResponseImplFromJson(json);

  @override
  final String? redirectBrowserTo;

  @override
  String toString() {
    return 'RegistrationBrowserLocationChangeRequiredResponse(redirectBrowserTo: $redirectBrowserTo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegistrationBrowserLocationChangeRequiredResponseImpl &&
            (identical(other.redirectBrowserTo, redirectBrowserTo) ||
                other.redirectBrowserTo == redirectBrowserTo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, redirectBrowserTo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegistrationBrowserLocationChangeRequiredResponseImplCopyWith<
          _$RegistrationBrowserLocationChangeRequiredResponseImpl>
      get copyWith =>
          __$$RegistrationBrowserLocationChangeRequiredResponseImplCopyWithImpl<
                  _$RegistrationBrowserLocationChangeRequiredResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RegistrationBrowserLocationChangeRequiredResponseImplToJson(
      this,
    );
  }
}

abstract class _RegistrationBrowserLocationChangeRequiredResponse
    implements RegistrationBrowserLocationChangeRequiredResponse {
  const factory _RegistrationBrowserLocationChangeRequiredResponse(
          {final String? redirectBrowserTo}) =
      _$RegistrationBrowserLocationChangeRequiredResponseImpl;

  factory _RegistrationBrowserLocationChangeRequiredResponse.fromJson(
          Map<String, dynamic> json) =
      _$RegistrationBrowserLocationChangeRequiredResponseImpl.fromJson;

  @override
  String? get redirectBrowserTo;
  @override
  @JsonKey(ignore: true)
  _$$RegistrationBrowserLocationChangeRequiredResponseImplCopyWith<
          _$RegistrationBrowserLocationChangeRequiredResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
