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

Identity _$IdentityFromJson(Map<String, dynamic> json) {
  return _Identity.fromJson(json);
}

/// @nodoc
mixin _$Identity {
  String? get id => throw _privateConstructorUsedError;
  String? get schemaId => throw _privateConstructorUsedError;
  String? get schemaUrl => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  DateTime? get stateChangedAt => throw _privateConstructorUsedError;
  Map<String, dynamic>? get traits => throw _privateConstructorUsedError;
  List<VerifiableAddress>? get verifiableAddresses =>
      throw _privateConstructorUsedError;
  List<RecoveryAddress>? get recoveryAddresses =>
      throw _privateConstructorUsedError;
  dynamic get metadataPublic => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $IdentityCopyWith<Identity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $IdentityCopyWith<$Res> {
  factory $IdentityCopyWith(Identity value, $Res Function(Identity) then) =
      _$IdentityCopyWithImpl<$Res, Identity>;
  @useResult
  $Res call(
      {String? id,
      String? schemaId,
      String? schemaUrl,
      String? state,
      DateTime? stateChangedAt,
      Map<String, dynamic>? traits,
      List<VerifiableAddress>? verifiableAddresses,
      List<RecoveryAddress>? recoveryAddresses,
      dynamic metadataPublic,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$IdentityCopyWithImpl<$Res, $Val extends Identity>
    implements $IdentityCopyWith<$Res> {
  _$IdentityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? schemaId = freezed,
    Object? schemaUrl = freezed,
    Object? state = freezed,
    Object? stateChangedAt = freezed,
    Object? traits = freezed,
    Object? verifiableAddresses = freezed,
    Object? recoveryAddresses = freezed,
    Object? metadataPublic = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      schemaId: freezed == schemaId
          ? _value.schemaId
          : schemaId // ignore: cast_nullable_to_non_nullable
              as String?,
      schemaUrl: freezed == schemaUrl
          ? _value.schemaUrl
          : schemaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      stateChangedAt: freezed == stateChangedAt
          ? _value.stateChangedAt
          : stateChangedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      traits: freezed == traits
          ? _value.traits
          : traits // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      verifiableAddresses: freezed == verifiableAddresses
          ? _value.verifiableAddresses
          : verifiableAddresses // ignore: cast_nullable_to_non_nullable
              as List<VerifiableAddress>?,
      recoveryAddresses: freezed == recoveryAddresses
          ? _value.recoveryAddresses
          : recoveryAddresses // ignore: cast_nullable_to_non_nullable
              as List<RecoveryAddress>?,
      metadataPublic: freezed == metadataPublic
          ? _value.metadataPublic
          : metadataPublic // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
abstract class _$$IdentityImplCopyWith<$Res>
    implements $IdentityCopyWith<$Res> {
  factory _$$IdentityImplCopyWith(
          _$IdentityImpl value, $Res Function(_$IdentityImpl) then) =
      __$$IdentityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? schemaId,
      String? schemaUrl,
      String? state,
      DateTime? stateChangedAt,
      Map<String, dynamic>? traits,
      List<VerifiableAddress>? verifiableAddresses,
      List<RecoveryAddress>? recoveryAddresses,
      dynamic metadataPublic,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$IdentityImplCopyWithImpl<$Res>
    extends _$IdentityCopyWithImpl<$Res, _$IdentityImpl>
    implements _$$IdentityImplCopyWith<$Res> {
  __$$IdentityImplCopyWithImpl(
      _$IdentityImpl _value, $Res Function(_$IdentityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? schemaId = freezed,
    Object? schemaUrl = freezed,
    Object? state = freezed,
    Object? stateChangedAt = freezed,
    Object? traits = freezed,
    Object? verifiableAddresses = freezed,
    Object? recoveryAddresses = freezed,
    Object? metadataPublic = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$IdentityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      schemaId: freezed == schemaId
          ? _value.schemaId
          : schemaId // ignore: cast_nullable_to_non_nullable
              as String?,
      schemaUrl: freezed == schemaUrl
          ? _value.schemaUrl
          : schemaUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      stateChangedAt: freezed == stateChangedAt
          ? _value.stateChangedAt
          : stateChangedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      traits: freezed == traits
          ? _value._traits
          : traits // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>?,
      verifiableAddresses: freezed == verifiableAddresses
          ? _value._verifiableAddresses
          : verifiableAddresses // ignore: cast_nullable_to_non_nullable
              as List<VerifiableAddress>?,
      recoveryAddresses: freezed == recoveryAddresses
          ? _value._recoveryAddresses
          : recoveryAddresses // ignore: cast_nullable_to_non_nullable
              as List<RecoveryAddress>?,
      metadataPublic: freezed == metadataPublic
          ? _value.metadataPublic
          : metadataPublic // ignore: cast_nullable_to_non_nullable
              as dynamic,
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
class _$IdentityImpl implements _Identity {
  const _$IdentityImpl(
      {this.id,
      this.schemaId,
      this.schemaUrl,
      this.state,
      this.stateChangedAt,
      final Map<String, dynamic>? traits,
      final List<VerifiableAddress>? verifiableAddresses,
      final List<RecoveryAddress>? recoveryAddresses,
      this.metadataPublic,
      this.createdAt,
      this.updatedAt})
      : _traits = traits,
        _verifiableAddresses = verifiableAddresses,
        _recoveryAddresses = recoveryAddresses;

  factory _$IdentityImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdentityImplFromJson(json);

  @override
  final String? id;
  @override
  final String? schemaId;
  @override
  final String? schemaUrl;
  @override
  final String? state;
  @override
  final DateTime? stateChangedAt;
  final Map<String, dynamic>? _traits;
  @override
  Map<String, dynamic>? get traits {
    final value = _traits;
    if (value == null) return null;
    if (_traits is EqualUnmodifiableMapView) return _traits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  final List<VerifiableAddress>? _verifiableAddresses;
  @override
  List<VerifiableAddress>? get verifiableAddresses {
    final value = _verifiableAddresses;
    if (value == null) return null;
    if (_verifiableAddresses is EqualUnmodifiableListView)
      return _verifiableAddresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<RecoveryAddress>? _recoveryAddresses;
  @override
  List<RecoveryAddress>? get recoveryAddresses {
    final value = _recoveryAddresses;
    if (value == null) return null;
    if (_recoveryAddresses is EqualUnmodifiableListView)
      return _recoveryAddresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final dynamic metadataPublic;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Identity(id: $id, schemaId: $schemaId, schemaUrl: $schemaUrl, state: $state, stateChangedAt: $stateChangedAt, traits: $traits, verifiableAddresses: $verifiableAddresses, recoveryAddresses: $recoveryAddresses, metadataPublic: $metadataPublic, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IdentityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.schemaId, schemaId) ||
                other.schemaId == schemaId) &&
            (identical(other.schemaUrl, schemaUrl) ||
                other.schemaUrl == schemaUrl) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.stateChangedAt, stateChangedAt) ||
                other.stateChangedAt == stateChangedAt) &&
            const DeepCollectionEquality().equals(other._traits, _traits) &&
            const DeepCollectionEquality()
                .equals(other._verifiableAddresses, _verifiableAddresses) &&
            const DeepCollectionEquality()
                .equals(other._recoveryAddresses, _recoveryAddresses) &&
            const DeepCollectionEquality()
                .equals(other.metadataPublic, metadataPublic) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      schemaId,
      schemaUrl,
      state,
      stateChangedAt,
      const DeepCollectionEquality().hash(_traits),
      const DeepCollectionEquality().hash(_verifiableAddresses),
      const DeepCollectionEquality().hash(_recoveryAddresses),
      const DeepCollectionEquality().hash(metadataPublic),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IdentityImplCopyWith<_$IdentityImpl> get copyWith =>
      __$$IdentityImplCopyWithImpl<_$IdentityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$IdentityImplToJson(
      this,
    );
  }
}

abstract class _Identity implements Identity {
  const factory _Identity(
      {final String? id,
      final String? schemaId,
      final String? schemaUrl,
      final String? state,
      final DateTime? stateChangedAt,
      final Map<String, dynamic>? traits,
      final List<VerifiableAddress>? verifiableAddresses,
      final List<RecoveryAddress>? recoveryAddresses,
      final dynamic metadataPublic,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$IdentityImpl;

  factory _Identity.fromJson(Map<String, dynamic> json) =
      _$IdentityImpl.fromJson;

  @override
  String? get id;
  @override
  String? get schemaId;
  @override
  String? get schemaUrl;
  @override
  String? get state;
  @override
  DateTime? get stateChangedAt;
  @override
  Map<String, dynamic>? get traits;
  @override
  List<VerifiableAddress>? get verifiableAddresses;
  @override
  List<RecoveryAddress>? get recoveryAddresses;
  @override
  dynamic get metadataPublic;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$IdentityImplCopyWith<_$IdentityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

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

VerifiableAddress _$VerifiableAddressFromJson(Map<String, dynamic> json) {
  return _VerifiableAddress.fromJson(json);
}

/// @nodoc
mixin _$VerifiableAddress {
  String? get id => throw _privateConstructorUsedError;
  String? get value => throw _privateConstructorUsedError;
  bool? get verified => throw _privateConstructorUsedError;
  String? get via => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerifiableAddressCopyWith<VerifiableAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerifiableAddressCopyWith<$Res> {
  factory $VerifiableAddressCopyWith(
          VerifiableAddress value, $Res Function(VerifiableAddress) then) =
      _$VerifiableAddressCopyWithImpl<$Res, VerifiableAddress>;
  @useResult
  $Res call(
      {String? id,
      String? value,
      bool? verified,
      String? via,
      String? status,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$VerifiableAddressCopyWithImpl<$Res, $Val extends VerifiableAddress>
    implements $VerifiableAddressCopyWith<$Res> {
  _$VerifiableAddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? verified = freezed,
    Object? via = freezed,
    Object? status = freezed,
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
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      via: freezed == via
          ? _value.via
          : via // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
abstract class _$$VerifiableAddressImplCopyWith<$Res>
    implements $VerifiableAddressCopyWith<$Res> {
  factory _$$VerifiableAddressImplCopyWith(_$VerifiableAddressImpl value,
          $Res Function(_$VerifiableAddressImpl) then) =
      __$$VerifiableAddressImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? value,
      bool? verified,
      String? via,
      String? status,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$VerifiableAddressImplCopyWithImpl<$Res>
    extends _$VerifiableAddressCopyWithImpl<$Res, _$VerifiableAddressImpl>
    implements _$$VerifiableAddressImplCopyWith<$Res> {
  __$$VerifiableAddressImplCopyWithImpl(_$VerifiableAddressImpl _value,
      $Res Function(_$VerifiableAddressImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? value = freezed,
    Object? verified = freezed,
    Object? via = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$VerifiableAddressImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String?,
      verified: freezed == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
      via: freezed == via
          ? _value.via
          : via // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
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
class _$VerifiableAddressImpl implements _VerifiableAddress {
  const _$VerifiableAddressImpl(
      {this.id,
      this.value,
      this.verified,
      this.via,
      this.status,
      this.createdAt,
      this.updatedAt});

  factory _$VerifiableAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifiableAddressImplFromJson(json);

  @override
  final String? id;
  @override
  final String? value;
  @override
  final bool? verified;
  @override
  final String? via;
  @override
  final String? status;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'VerifiableAddress(id: $id, value: $value, verified: $verified, via: $via, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerifiableAddressImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.verified, verified) ||
                other.verified == verified) &&
            (identical(other.via, via) || other.via == via) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, value, verified, via, status, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$VerifiableAddressImplCopyWith<_$VerifiableAddressImpl> get copyWith =>
      __$$VerifiableAddressImplCopyWithImpl<_$VerifiableAddressImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$VerifiableAddressImplToJson(
      this,
    );
  }
}

abstract class _VerifiableAddress implements VerifiableAddress {
  const factory _VerifiableAddress(
      {final String? id,
      final String? value,
      final bool? verified,
      final String? via,
      final String? status,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$VerifiableAddressImpl;

  factory _VerifiableAddress.fromJson(Map<String, dynamic> json) =
      _$VerifiableAddressImpl.fromJson;

  @override
  String? get id;
  @override
  String? get value;
  @override
  bool? get verified;
  @override
  String? get via;
  @override
  String? get status;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$VerifiableAddressImplCopyWith<_$VerifiableAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
