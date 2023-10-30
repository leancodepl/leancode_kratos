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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegistrationSuccessResponse _$RegistrationSuccessResponseFromJson(
    Map<String, dynamic> json) {
  return _RegistrationSuccessResponse.fromJson(json);
}

/// @nodoc
mixin _$RegistrationSuccessResponse {
  List<ContinueWith>? get continueWith => throw _privateConstructorUsedError;
  Identity? get identity => throw _privateConstructorUsedError;
  Session? get session => throw _privateConstructorUsedError;
  String? get sessionToken => throw _privateConstructorUsedError;

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
      String? sessionToken});

  $IdentityCopyWith<$Res>? get identity;
  $SessionCopyWith<$Res>? get session;
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
}

/// @nodoc
abstract class _$$_RegistrationSuccessResponseCopyWith<$Res>
    implements $RegistrationSuccessResponseCopyWith<$Res> {
  factory _$$_RegistrationSuccessResponseCopyWith(
          _$_RegistrationSuccessResponse value,
          $Res Function(_$_RegistrationSuccessResponse) then) =
      __$$_RegistrationSuccessResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ContinueWith>? continueWith,
      Identity? identity,
      Session? session,
      String? sessionToken});

  @override
  $IdentityCopyWith<$Res>? get identity;
  @override
  $SessionCopyWith<$Res>? get session;
}

/// @nodoc
class __$$_RegistrationSuccessResponseCopyWithImpl<$Res>
    extends _$RegistrationSuccessResponseCopyWithImpl<$Res,
        _$_RegistrationSuccessResponse>
    implements _$$_RegistrationSuccessResponseCopyWith<$Res> {
  __$$_RegistrationSuccessResponseCopyWithImpl(
      _$_RegistrationSuccessResponse _value,
      $Res Function(_$_RegistrationSuccessResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? continueWith = freezed,
    Object? identity = freezed,
    Object? session = freezed,
    Object? sessionToken = freezed,
  }) {
    return _then(_$_RegistrationSuccessResponse(
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegistrationSuccessResponse implements _RegistrationSuccessResponse {
  const _$_RegistrationSuccessResponse(
      {final List<ContinueWith>? continueWith,
      this.identity,
      this.session,
      this.sessionToken})
      : _continueWith = continueWith;

  factory _$_RegistrationSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$$_RegistrationSuccessResponseFromJson(json);

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

  @override
  String toString() {
    return 'RegistrationSuccessResponse(continueWith: $continueWith, identity: $identity, session: $session, sessionToken: $sessionToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationSuccessResponse &&
            const DeepCollectionEquality()
                .equals(other._continueWith, _continueWith) &&
            (identical(other.identity, identity) ||
                other.identity == identity) &&
            (identical(other.session, session) || other.session == session) &&
            (identical(other.sessionToken, sessionToken) ||
                other.sessionToken == sessionToken));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_continueWith),
      identity,
      session,
      sessionToken);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistrationSuccessResponseCopyWith<_$_RegistrationSuccessResponse>
      get copyWith => __$$_RegistrationSuccessResponseCopyWithImpl<
          _$_RegistrationSuccessResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegistrationSuccessResponseToJson(
      this,
    );
  }
}

abstract class _RegistrationSuccessResponse
    implements RegistrationSuccessResponse {
  const factory _RegistrationSuccessResponse(
      {final List<ContinueWith>? continueWith,
      final Identity? identity,
      final Session? session,
      final String? sessionToken}) = _$_RegistrationSuccessResponse;

  factory _RegistrationSuccessResponse.fromJson(Map<String, dynamic> json) =
      _$_RegistrationSuccessResponse.fromJson;

  @override
  List<ContinueWith>? get continueWith;
  @override
  Identity? get identity;
  @override
  Session? get session;
  @override
  String? get sessionToken;
  @override
  @JsonKey(ignore: true)
  _$$_RegistrationSuccessResponseCopyWith<_$_RegistrationSuccessResponse>
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
abstract class _$$_RegistrationBrowserLocationChangeRequiredResponseCopyWith<
        $Res>
    implements
        $RegistrationBrowserLocationChangeRequiredResponseCopyWith<$Res> {
  factory _$$_RegistrationBrowserLocationChangeRequiredResponseCopyWith(
          _$_RegistrationBrowserLocationChangeRequiredResponse value,
          $Res Function(_$_RegistrationBrowserLocationChangeRequiredResponse)
              then) =
      __$$_RegistrationBrowserLocationChangeRequiredResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? redirectBrowserTo});
}

/// @nodoc
class __$$_RegistrationBrowserLocationChangeRequiredResponseCopyWithImpl<$Res>
    extends _$RegistrationBrowserLocationChangeRequiredResponseCopyWithImpl<
        $Res, _$_RegistrationBrowserLocationChangeRequiredResponse>
    implements
        _$$_RegistrationBrowserLocationChangeRequiredResponseCopyWith<$Res> {
  __$$_RegistrationBrowserLocationChangeRequiredResponseCopyWithImpl(
      _$_RegistrationBrowserLocationChangeRequiredResponse _value,
      $Res Function(_$_RegistrationBrowserLocationChangeRequiredResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? redirectBrowserTo = freezed,
  }) {
    return _then(_$_RegistrationBrowserLocationChangeRequiredResponse(
      redirectBrowserTo: freezed == redirectBrowserTo
          ? _value.redirectBrowserTo
          : redirectBrowserTo // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegistrationBrowserLocationChangeRequiredResponse
    implements _RegistrationBrowserLocationChangeRequiredResponse {
  const _$_RegistrationBrowserLocationChangeRequiredResponse(
      {this.redirectBrowserTo});

  factory _$_RegistrationBrowserLocationChangeRequiredResponse.fromJson(
          Map<String, dynamic> json) =>
      _$$_RegistrationBrowserLocationChangeRequiredResponseFromJson(json);

  @override
  final String? redirectBrowserTo;

  @override
  String toString() {
    return 'RegistrationBrowserLocationChangeRequiredResponse(redirectBrowserTo: $redirectBrowserTo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RegistrationBrowserLocationChangeRequiredResponse &&
            (identical(other.redirectBrowserTo, redirectBrowserTo) ||
                other.redirectBrowserTo == redirectBrowserTo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, redirectBrowserTo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegistrationBrowserLocationChangeRequiredResponseCopyWith<
          _$_RegistrationBrowserLocationChangeRequiredResponse>
      get copyWith =>
          __$$_RegistrationBrowserLocationChangeRequiredResponseCopyWithImpl<
                  _$_RegistrationBrowserLocationChangeRequiredResponse>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegistrationBrowserLocationChangeRequiredResponseToJson(
      this,
    );
  }
}

abstract class _RegistrationBrowserLocationChangeRequiredResponse
    implements RegistrationBrowserLocationChangeRequiredResponse {
  const factory _RegistrationBrowserLocationChangeRequiredResponse(
          {final String? redirectBrowserTo}) =
      _$_RegistrationBrowserLocationChangeRequiredResponse;

  factory _RegistrationBrowserLocationChangeRequiredResponse.fromJson(
          Map<String, dynamic> json) =
      _$_RegistrationBrowserLocationChangeRequiredResponse.fromJson;

  @override
  String? get redirectBrowserTo;
  @override
  @JsonKey(ignore: true)
  _$$_RegistrationBrowserLocationChangeRequiredResponseCopyWith<
          _$_RegistrationBrowserLocationChangeRequiredResponse>
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
abstract class _$$_ContinueWithCopyWith<$Res>
    implements $ContinueWithCopyWith<$Res> {
  factory _$$_ContinueWithCopyWith(
          _$_ContinueWith value, $Res Function(_$_ContinueWith) then) =
      __$$_ContinueWithCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? action, Flow? flow});

  @override
  $FlowCopyWith<$Res>? get flow;
}

/// @nodoc
class __$$_ContinueWithCopyWithImpl<$Res>
    extends _$ContinueWithCopyWithImpl<$Res, _$_ContinueWith>
    implements _$$_ContinueWithCopyWith<$Res> {
  __$$_ContinueWithCopyWithImpl(
      _$_ContinueWith _value, $Res Function(_$_ContinueWith) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = freezed,
    Object? flow = freezed,
  }) {
    return _then(_$_ContinueWith(
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
class _$_ContinueWith implements _ContinueWith {
  const _$_ContinueWith({this.action, this.flow});

  factory _$_ContinueWith.fromJson(Map<String, dynamic> json) =>
      _$$_ContinueWithFromJson(json);

  @override
  final String? action;
  @override
  final Flow? flow;

  @override
  String toString() {
    return 'ContinueWith(action: $action, flow: $flow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContinueWith &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.flow, flow) || other.flow == flow));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, action, flow);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContinueWithCopyWith<_$_ContinueWith> get copyWith =>
      __$$_ContinueWithCopyWithImpl<_$_ContinueWith>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContinueWithToJson(
      this,
    );
  }
}

abstract class _ContinueWith implements ContinueWith {
  const factory _ContinueWith({final String? action, final Flow? flow}) =
      _$_ContinueWith;

  factory _ContinueWith.fromJson(Map<String, dynamic> json) =
      _$_ContinueWith.fromJson;

  @override
  String? get action;
  @override
  Flow? get flow;
  @override
  @JsonKey(ignore: true)
  _$$_ContinueWithCopyWith<_$_ContinueWith> get copyWith =>
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
abstract class _$$_FlowCopyWith<$Res> implements $FlowCopyWith<$Res> {
  factory _$$_FlowCopyWith(_$_Flow value, $Res Function(_$_Flow) then) =
      __$$_FlowCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? verifiableAddress});
}

/// @nodoc
class __$$_FlowCopyWithImpl<$Res> extends _$FlowCopyWithImpl<$Res, _$_Flow>
    implements _$$_FlowCopyWith<$Res> {
  __$$_FlowCopyWithImpl(_$_Flow _value, $Res Function(_$_Flow) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? verifiableAddress = freezed,
  }) {
    return _then(_$_Flow(
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
class _$_Flow implements _Flow {
  const _$_Flow({this.id, this.verifiableAddress});

  factory _$_Flow.fromJson(Map<String, dynamic> json) => _$$_FlowFromJson(json);

  @override
  final String? id;
  @override
  final String? verifiableAddress;

  @override
  String toString() {
    return 'Flow(id: $id, verifiableAddress: $verifiableAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Flow &&
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
  _$$_FlowCopyWith<_$_Flow> get copyWith =>
      __$$_FlowCopyWithImpl<_$_Flow>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FlowToJson(
      this,
    );
  }
}

abstract class _Flow implements Flow {
  const factory _Flow({final String? id, final String? verifiableAddress}) =
      _$_Flow;

  factory _Flow.fromJson(Map<String, dynamic> json) = _$_Flow.fromJson;

  @override
  String? get id;
  @override
  String? get verifiableAddress;
  @override
  @JsonKey(ignore: true)
  _$$_FlowCopyWith<_$_Flow> get copyWith => throw _privateConstructorUsedError;
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
  Traits? get traits => throw _privateConstructorUsedError;
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
      Traits? traits,
      List<VerifiableAddress>? verifiableAddresses,
      List<RecoveryAddress>? recoveryAddresses,
      dynamic metadataPublic,
      DateTime? createdAt,
      DateTime? updatedAt});

  $TraitsCopyWith<$Res>? get traits;
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
              as Traits?,
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

  @override
  @pragma('vm:prefer-inline')
  $TraitsCopyWith<$Res>? get traits {
    if (_value.traits == null) {
      return null;
    }

    return $TraitsCopyWith<$Res>(_value.traits!, (value) {
      return _then(_value.copyWith(traits: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_IdentityCopyWith<$Res> implements $IdentityCopyWith<$Res> {
  factory _$$_IdentityCopyWith(
          _$_Identity value, $Res Function(_$_Identity) then) =
      __$$_IdentityCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? schemaId,
      String? schemaUrl,
      String? state,
      DateTime? stateChangedAt,
      Traits? traits,
      List<VerifiableAddress>? verifiableAddresses,
      List<RecoveryAddress>? recoveryAddresses,
      dynamic metadataPublic,
      DateTime? createdAt,
      DateTime? updatedAt});

  @override
  $TraitsCopyWith<$Res>? get traits;
}

/// @nodoc
class __$$_IdentityCopyWithImpl<$Res>
    extends _$IdentityCopyWithImpl<$Res, _$_Identity>
    implements _$$_IdentityCopyWith<$Res> {
  __$$_IdentityCopyWithImpl(
      _$_Identity _value, $Res Function(_$_Identity) _then)
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
    return _then(_$_Identity(
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
              as Traits?,
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
class _$_Identity implements _Identity {
  const _$_Identity(
      {this.id,
      this.schemaId,
      this.schemaUrl,
      this.state,
      this.stateChangedAt,
      this.traits,
      final List<VerifiableAddress>? verifiableAddresses,
      final List<RecoveryAddress>? recoveryAddresses,
      this.metadataPublic,
      this.createdAt,
      this.updatedAt})
      : _verifiableAddresses = verifiableAddresses,
        _recoveryAddresses = recoveryAddresses;

  factory _$_Identity.fromJson(Map<String, dynamic> json) =>
      _$$_IdentityFromJson(json);

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
  @override
  final Traits? traits;
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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Identity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.schemaId, schemaId) ||
                other.schemaId == schemaId) &&
            (identical(other.schemaUrl, schemaUrl) ||
                other.schemaUrl == schemaUrl) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.stateChangedAt, stateChangedAt) ||
                other.stateChangedAt == stateChangedAt) &&
            (identical(other.traits, traits) || other.traits == traits) &&
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
      traits,
      const DeepCollectionEquality().hash(_verifiableAddresses),
      const DeepCollectionEquality().hash(_recoveryAddresses),
      const DeepCollectionEquality().hash(metadataPublic),
      createdAt,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IdentityCopyWith<_$_Identity> get copyWith =>
      __$$_IdentityCopyWithImpl<_$_Identity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_IdentityToJson(
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
      final Traits? traits,
      final List<VerifiableAddress>? verifiableAddresses,
      final List<RecoveryAddress>? recoveryAddresses,
      final dynamic metadataPublic,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$_Identity;

  factory _Identity.fromJson(Map<String, dynamic> json) = _$_Identity.fromJson;

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
  Traits? get traits;
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
  _$$_IdentityCopyWith<_$_Identity> get copyWith =>
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
abstract class _$$_RecoveryAddressCopyWith<$Res>
    implements $RecoveryAddressCopyWith<$Res> {
  factory _$$_RecoveryAddressCopyWith(
          _$_RecoveryAddress value, $Res Function(_$_RecoveryAddress) then) =
      __$$_RecoveryAddressCopyWithImpl<$Res>;
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
class __$$_RecoveryAddressCopyWithImpl<$Res>
    extends _$RecoveryAddressCopyWithImpl<$Res, _$_RecoveryAddress>
    implements _$$_RecoveryAddressCopyWith<$Res> {
  __$$_RecoveryAddressCopyWithImpl(
      _$_RecoveryAddress _value, $Res Function(_$_RecoveryAddress) _then)
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
    return _then(_$_RecoveryAddress(
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
class _$_RecoveryAddress implements _RecoveryAddress {
  const _$_RecoveryAddress(
      {this.id, this.value, this.via, this.createdAt, this.updatedAt});

  factory _$_RecoveryAddress.fromJson(Map<String, dynamic> json) =>
      _$$_RecoveryAddressFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RecoveryAddress &&
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
  _$$_RecoveryAddressCopyWith<_$_RecoveryAddress> get copyWith =>
      __$$_RecoveryAddressCopyWithImpl<_$_RecoveryAddress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecoveryAddressToJson(
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
      final DateTime? updatedAt}) = _$_RecoveryAddress;

  factory _RecoveryAddress.fromJson(Map<String, dynamic> json) =
      _$_RecoveryAddress.fromJson;

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
  _$$_RecoveryAddressCopyWith<_$_RecoveryAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

Traits _$TraitsFromJson(Map<String, dynamic> json) {
  return _Traits.fromJson(json);
}

/// @nodoc
mixin _$Traits {
  String? get givenName => throw _privateConstructorUsedError;
  String? get familyName => throw _privateConstructorUsedError;
  bool? get regulationsAccepted => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TraitsCopyWith<Traits> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TraitsCopyWith<$Res> {
  factory $TraitsCopyWith(Traits value, $Res Function(Traits) then) =
      _$TraitsCopyWithImpl<$Res, Traits>;
  @useResult
  $Res call(
      {String? givenName,
      String? familyName,
      bool? regulationsAccepted,
      String? email});
}

/// @nodoc
class _$TraitsCopyWithImpl<$Res, $Val extends Traits>
    implements $TraitsCopyWith<$Res> {
  _$TraitsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? givenName = freezed,
    Object? familyName = freezed,
    Object? regulationsAccepted = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      givenName: freezed == givenName
          ? _value.givenName
          : givenName // ignore: cast_nullable_to_non_nullable
              as String?,
      familyName: freezed == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String?,
      regulationsAccepted: freezed == regulationsAccepted
          ? _value.regulationsAccepted
          : regulationsAccepted // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TraitsCopyWith<$Res> implements $TraitsCopyWith<$Res> {
  factory _$$_TraitsCopyWith(_$_Traits value, $Res Function(_$_Traits) then) =
      __$$_TraitsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? givenName,
      String? familyName,
      bool? regulationsAccepted,
      String? email});
}

/// @nodoc
class __$$_TraitsCopyWithImpl<$Res>
    extends _$TraitsCopyWithImpl<$Res, _$_Traits>
    implements _$$_TraitsCopyWith<$Res> {
  __$$_TraitsCopyWithImpl(_$_Traits _value, $Res Function(_$_Traits) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? givenName = freezed,
    Object? familyName = freezed,
    Object? regulationsAccepted = freezed,
    Object? email = freezed,
  }) {
    return _then(_$_Traits(
      givenName: freezed == givenName
          ? _value.givenName
          : givenName // ignore: cast_nullable_to_non_nullable
              as String?,
      familyName: freezed == familyName
          ? _value.familyName
          : familyName // ignore: cast_nullable_to_non_nullable
              as String?,
      regulationsAccepted: freezed == regulationsAccepted
          ? _value.regulationsAccepted
          : regulationsAccepted // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Traits implements _Traits {
  const _$_Traits(
      {this.givenName, this.familyName, this.regulationsAccepted, this.email});

  factory _$_Traits.fromJson(Map<String, dynamic> json) =>
      _$$_TraitsFromJson(json);

  @override
  final String? givenName;
  @override
  final String? familyName;
  @override
  final bool? regulationsAccepted;
  @override
  final String? email;

  @override
  String toString() {
    return 'Traits(givenName: $givenName, familyName: $familyName, regulationsAccepted: $regulationsAccepted, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Traits &&
            (identical(other.givenName, givenName) ||
                other.givenName == givenName) &&
            (identical(other.familyName, familyName) ||
                other.familyName == familyName) &&
            (identical(other.regulationsAccepted, regulationsAccepted) ||
                other.regulationsAccepted == regulationsAccepted) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, givenName, familyName, regulationsAccepted, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TraitsCopyWith<_$_Traits> get copyWith =>
      __$$_TraitsCopyWithImpl<_$_Traits>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TraitsToJson(
      this,
    );
  }
}

abstract class _Traits implements Traits {
  const factory _Traits(
      {final String? givenName,
      final String? familyName,
      final bool? regulationsAccepted,
      final String? email}) = _$_Traits;

  factory _Traits.fromJson(Map<String, dynamic> json) = _$_Traits.fromJson;

  @override
  String? get givenName;
  @override
  String? get familyName;
  @override
  bool? get regulationsAccepted;
  @override
  String? get email;
  @override
  @JsonKey(ignore: true)
  _$$_TraitsCopyWith<_$_Traits> get copyWith =>
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
abstract class _$$_VerifiableAddressCopyWith<$Res>
    implements $VerifiableAddressCopyWith<$Res> {
  factory _$$_VerifiableAddressCopyWith(_$_VerifiableAddress value,
          $Res Function(_$_VerifiableAddress) then) =
      __$$_VerifiableAddressCopyWithImpl<$Res>;
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
class __$$_VerifiableAddressCopyWithImpl<$Res>
    extends _$VerifiableAddressCopyWithImpl<$Res, _$_VerifiableAddress>
    implements _$$_VerifiableAddressCopyWith<$Res> {
  __$$_VerifiableAddressCopyWithImpl(
      _$_VerifiableAddress _value, $Res Function(_$_VerifiableAddress) _then)
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
    return _then(_$_VerifiableAddress(
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
class _$_VerifiableAddress implements _VerifiableAddress {
  const _$_VerifiableAddress(
      {this.id,
      this.value,
      this.verified,
      this.via,
      this.status,
      this.createdAt,
      this.updatedAt});

  factory _$_VerifiableAddress.fromJson(Map<String, dynamic> json) =>
      _$$_VerifiableAddressFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerifiableAddress &&
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
  _$$_VerifiableAddressCopyWith<_$_VerifiableAddress> get copyWith =>
      __$$_VerifiableAddressCopyWithImpl<_$_VerifiableAddress>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerifiableAddressToJson(
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
      final DateTime? updatedAt}) = _$_VerifiableAddress;

  factory _VerifiableAddress.fromJson(Map<String, dynamic> json) =
      _$_VerifiableAddress.fromJson;

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
  _$$_VerifiableAddressCopyWith<_$_VerifiableAddress> get copyWith =>
      throw _privateConstructorUsedError;
}
