// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginSuccessResponse _$LoginSuccessResponseFromJson(Map<String, dynamic> json) {
  return _LoginSuccessResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginSuccessResponse {
  String get sessionToken => throw _privateConstructorUsedError;
  Session get session => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginSuccessResponseCopyWith<LoginSuccessResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginSuccessResponseCopyWith<$Res> {
  factory $LoginSuccessResponseCopyWith(LoginSuccessResponse value,
          $Res Function(LoginSuccessResponse) then) =
      _$LoginSuccessResponseCopyWithImpl<$Res, LoginSuccessResponse>;
  @useResult
  $Res call({String sessionToken, Session session});

  $SessionCopyWith<$Res> get session;
}

/// @nodoc
class _$LoginSuccessResponseCopyWithImpl<$Res,
        $Val extends LoginSuccessResponse>
    implements $LoginSuccessResponseCopyWith<$Res> {
  _$LoginSuccessResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionToken = null,
    Object? session = null,
  }) {
    return _then(_value.copyWith(
      sessionToken: null == sessionToken
          ? _value.sessionToken
          : sessionToken // ignore: cast_nullable_to_non_nullable
              as String,
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SessionCopyWith<$Res> get session {
    return $SessionCopyWith<$Res>(_value.session, (value) {
      return _then(_value.copyWith(session: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginSuccessResponseImplCopyWith<$Res>
    implements $LoginSuccessResponseCopyWith<$Res> {
  factory _$$LoginSuccessResponseImplCopyWith(_$LoginSuccessResponseImpl value,
          $Res Function(_$LoginSuccessResponseImpl) then) =
      __$$LoginSuccessResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String sessionToken, Session session});

  @override
  $SessionCopyWith<$Res> get session;
}

/// @nodoc
class __$$LoginSuccessResponseImplCopyWithImpl<$Res>
    extends _$LoginSuccessResponseCopyWithImpl<$Res, _$LoginSuccessResponseImpl>
    implements _$$LoginSuccessResponseImplCopyWith<$Res> {
  __$$LoginSuccessResponseImplCopyWithImpl(_$LoginSuccessResponseImpl _value,
      $Res Function(_$LoginSuccessResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionToken = null,
    Object? session = null,
  }) {
    return _then(_$LoginSuccessResponseImpl(
      sessionToken: null == sessionToken
          ? _value.sessionToken
          : sessionToken // ignore: cast_nullable_to_non_nullable
              as String,
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LoginSuccessResponseImpl implements _LoginSuccessResponse {
  const _$LoginSuccessResponseImpl(
      {required this.sessionToken, required this.session});

  factory _$LoginSuccessResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginSuccessResponseImplFromJson(json);

  @override
  final String sessionToken;
  @override
  final Session session;

  @override
  String toString() {
    return 'LoginSuccessResponse(sessionToken: $sessionToken, session: $session)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginSuccessResponseImpl &&
            (identical(other.sessionToken, sessionToken) ||
                other.sessionToken == sessionToken) &&
            (identical(other.session, session) || other.session == session));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sessionToken, session);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginSuccessResponseImplCopyWith<_$LoginSuccessResponseImpl>
      get copyWith =>
          __$$LoginSuccessResponseImplCopyWithImpl<_$LoginSuccessResponseImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginSuccessResponseImplToJson(
      this,
    );
  }
}

abstract class _LoginSuccessResponse implements LoginSuccessResponse {
  const factory _LoginSuccessResponse(
      {required final String sessionToken,
      required final Session session}) = _$LoginSuccessResponseImpl;

  factory _LoginSuccessResponse.fromJson(Map<String, dynamic> json) =
      _$LoginSuccessResponseImpl.fromJson;

  @override
  String get sessionToken;
  @override
  Session get session;
  @override
  @JsonKey(ignore: true)
  _$$LoginSuccessResponseImplCopyWith<_$LoginSuccessResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Session _$SessionFromJson(Map<String, dynamic> json) {
  return _Session.fromJson(json);
}

/// @nodoc
mixin _$Session {
  String get id => throw _privateConstructorUsedError;
  bool get active => throw _privateConstructorUsedError;
  DateTime get expiresAt => throw _privateConstructorUsedError;
  DateTime get authenticatedAt => throw _privateConstructorUsedError;
  String get authenticatorAssuranceLevel => throw _privateConstructorUsedError;
  List<AuthenticationMethod> get authenticationMethods =>
      throw _privateConstructorUsedError;
  DateTime get issuedAt => throw _privateConstructorUsedError;
  Identity get identity => throw _privateConstructorUsedError;
  List<Device> get devices => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SessionCopyWith<Session> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SessionCopyWith<$Res> {
  factory $SessionCopyWith(Session value, $Res Function(Session) then) =
      _$SessionCopyWithImpl<$Res, Session>;
  @useResult
  $Res call(
      {String id,
      bool active,
      DateTime expiresAt,
      DateTime authenticatedAt,
      String authenticatorAssuranceLevel,
      List<AuthenticationMethod> authenticationMethods,
      DateTime issuedAt,
      Identity identity,
      List<Device> devices});

  $IdentityCopyWith<$Res> get identity;
}

/// @nodoc
class _$SessionCopyWithImpl<$Res, $Val extends Session>
    implements $SessionCopyWith<$Res> {
  _$SessionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? active = null,
    Object? expiresAt = null,
    Object? authenticatedAt = null,
    Object? authenticatorAssuranceLevel = null,
    Object? authenticationMethods = null,
    Object? issuedAt = null,
    Object? identity = null,
    Object? devices = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      authenticatedAt: null == authenticatedAt
          ? _value.authenticatedAt
          : authenticatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      authenticatorAssuranceLevel: null == authenticatorAssuranceLevel
          ? _value.authenticatorAssuranceLevel
          : authenticatorAssuranceLevel // ignore: cast_nullable_to_non_nullable
              as String,
      authenticationMethods: null == authenticationMethods
          ? _value.authenticationMethods
          : authenticationMethods // ignore: cast_nullable_to_non_nullable
              as List<AuthenticationMethod>,
      issuedAt: null == issuedAt
          ? _value.issuedAt
          : issuedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      identity: null == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as Identity,
      devices: null == devices
          ? _value.devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<Device>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IdentityCopyWith<$Res> get identity {
    return $IdentityCopyWith<$Res>(_value.identity, (value) {
      return _then(_value.copyWith(identity: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SessionImplCopyWith<$Res> implements $SessionCopyWith<$Res> {
  factory _$$SessionImplCopyWith(
          _$SessionImpl value, $Res Function(_$SessionImpl) then) =
      __$$SessionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      bool active,
      DateTime expiresAt,
      DateTime authenticatedAt,
      String authenticatorAssuranceLevel,
      List<AuthenticationMethod> authenticationMethods,
      DateTime issuedAt,
      Identity identity,
      List<Device> devices});

  @override
  $IdentityCopyWith<$Res> get identity;
}

/// @nodoc
class __$$SessionImplCopyWithImpl<$Res>
    extends _$SessionCopyWithImpl<$Res, _$SessionImpl>
    implements _$$SessionImplCopyWith<$Res> {
  __$$SessionImplCopyWithImpl(
      _$SessionImpl _value, $Res Function(_$SessionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? active = null,
    Object? expiresAt = null,
    Object? authenticatedAt = null,
    Object? authenticatorAssuranceLevel = null,
    Object? authenticationMethods = null,
    Object? issuedAt = null,
    Object? identity = null,
    Object? devices = null,
  }) {
    return _then(_$SessionImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      active: null == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool,
      expiresAt: null == expiresAt
          ? _value.expiresAt
          : expiresAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      authenticatedAt: null == authenticatedAt
          ? _value.authenticatedAt
          : authenticatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      authenticatorAssuranceLevel: null == authenticatorAssuranceLevel
          ? _value.authenticatorAssuranceLevel
          : authenticatorAssuranceLevel // ignore: cast_nullable_to_non_nullable
              as String,
      authenticationMethods: null == authenticationMethods
          ? _value._authenticationMethods
          : authenticationMethods // ignore: cast_nullable_to_non_nullable
              as List<AuthenticationMethod>,
      issuedAt: null == issuedAt
          ? _value.issuedAt
          : issuedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      identity: null == identity
          ? _value.identity
          : identity // ignore: cast_nullable_to_non_nullable
              as Identity,
      devices: null == devices
          ? _value._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<Device>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SessionImpl implements _Session {
  const _$SessionImpl(
      {required this.id,
      required this.active,
      required this.expiresAt,
      required this.authenticatedAt,
      required this.authenticatorAssuranceLevel,
      required final List<AuthenticationMethod> authenticationMethods,
      required this.issuedAt,
      required this.identity,
      required final List<Device> devices})
      : _authenticationMethods = authenticationMethods,
        _devices = devices;

  factory _$SessionImpl.fromJson(Map<String, dynamic> json) =>
      _$$SessionImplFromJson(json);

  @override
  final String id;
  @override
  final bool active;
  @override
  final DateTime expiresAt;
  @override
  final DateTime authenticatedAt;
  @override
  final String authenticatorAssuranceLevel;
  final List<AuthenticationMethod> _authenticationMethods;
  @override
  List<AuthenticationMethod> get authenticationMethods {
    if (_authenticationMethods is EqualUnmodifiableListView)
      return _authenticationMethods;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_authenticationMethods);
  }

  @override
  final DateTime issuedAt;
  @override
  final Identity identity;
  final List<Device> _devices;
  @override
  List<Device> get devices {
    if (_devices is EqualUnmodifiableListView) return _devices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_devices);
  }

  @override
  String toString() {
    return 'Session(id: $id, active: $active, expiresAt: $expiresAt, authenticatedAt: $authenticatedAt, authenticatorAssuranceLevel: $authenticatorAssuranceLevel, authenticationMethods: $authenticationMethods, issuedAt: $issuedAt, identity: $identity, devices: $devices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SessionImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.expiresAt, expiresAt) ||
                other.expiresAt == expiresAt) &&
            (identical(other.authenticatedAt, authenticatedAt) ||
                other.authenticatedAt == authenticatedAt) &&
            (identical(other.authenticatorAssuranceLevel,
                    authenticatorAssuranceLevel) ||
                other.authenticatorAssuranceLevel ==
                    authenticatorAssuranceLevel) &&
            const DeepCollectionEquality()
                .equals(other._authenticationMethods, _authenticationMethods) &&
            (identical(other.issuedAt, issuedAt) ||
                other.issuedAt == issuedAt) &&
            (identical(other.identity, identity) ||
                other.identity == identity) &&
            const DeepCollectionEquality().equals(other._devices, _devices));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      active,
      expiresAt,
      authenticatedAt,
      authenticatorAssuranceLevel,
      const DeepCollectionEquality().hash(_authenticationMethods),
      issuedAt,
      identity,
      const DeepCollectionEquality().hash(_devices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SessionImplCopyWith<_$SessionImpl> get copyWith =>
      __$$SessionImplCopyWithImpl<_$SessionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SessionImplToJson(
      this,
    );
  }
}

abstract class _Session implements Session {
  const factory _Session(
      {required final String id,
      required final bool active,
      required final DateTime expiresAt,
      required final DateTime authenticatedAt,
      required final String authenticatorAssuranceLevel,
      required final List<AuthenticationMethod> authenticationMethods,
      required final DateTime issuedAt,
      required final Identity identity,
      required final List<Device> devices}) = _$SessionImpl;

  factory _Session.fromJson(Map<String, dynamic> json) = _$SessionImpl.fromJson;

  @override
  String get id;
  @override
  bool get active;
  @override
  DateTime get expiresAt;
  @override
  DateTime get authenticatedAt;
  @override
  String get authenticatorAssuranceLevel;
  @override
  List<AuthenticationMethod> get authenticationMethods;
  @override
  DateTime get issuedAt;
  @override
  Identity get identity;
  @override
  List<Device> get devices;
  @override
  @JsonKey(ignore: true)
  _$$SessionImplCopyWith<_$SessionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AuthenticationMethod _$AuthenticationMethodFromJson(Map<String, dynamic> json) {
  return _AuthenticationMethod.fromJson(json);
}

/// @nodoc
mixin _$AuthenticationMethod {
  String get method => throw _privateConstructorUsedError;
  String get aal => throw _privateConstructorUsedError;
  DateTime get completedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AuthenticationMethodCopyWith<AuthenticationMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthenticationMethodCopyWith<$Res> {
  factory $AuthenticationMethodCopyWith(AuthenticationMethod value,
          $Res Function(AuthenticationMethod) then) =
      _$AuthenticationMethodCopyWithImpl<$Res, AuthenticationMethod>;
  @useResult
  $Res call({String method, String aal, DateTime completedAt});
}

/// @nodoc
class _$AuthenticationMethodCopyWithImpl<$Res,
        $Val extends AuthenticationMethod>
    implements $AuthenticationMethodCopyWith<$Res> {
  _$AuthenticationMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? aal = null,
    Object? completedAt = null,
  }) {
    return _then(_value.copyWith(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      aal: null == aal
          ? _value.aal
          : aal // ignore: cast_nullable_to_non_nullable
              as String,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AuthenticationMethodImplCopyWith<$Res>
    implements $AuthenticationMethodCopyWith<$Res> {
  factory _$$AuthenticationMethodImplCopyWith(_$AuthenticationMethodImpl value,
          $Res Function(_$AuthenticationMethodImpl) then) =
      __$$AuthenticationMethodImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String method, String aal, DateTime completedAt});
}

/// @nodoc
class __$$AuthenticationMethodImplCopyWithImpl<$Res>
    extends _$AuthenticationMethodCopyWithImpl<$Res, _$AuthenticationMethodImpl>
    implements _$$AuthenticationMethodImplCopyWith<$Res> {
  __$$AuthenticationMethodImplCopyWithImpl(_$AuthenticationMethodImpl _value,
      $Res Function(_$AuthenticationMethodImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? aal = null,
    Object? completedAt = null,
  }) {
    return _then(_$AuthenticationMethodImpl(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      aal: null == aal
          ? _value.aal
          : aal // ignore: cast_nullable_to_non_nullable
              as String,
      completedAt: null == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AuthenticationMethodImpl implements _AuthenticationMethod {
  const _$AuthenticationMethodImpl(
      {required this.method, required this.aal, required this.completedAt});

  factory _$AuthenticationMethodImpl.fromJson(Map<String, dynamic> json) =>
      _$$AuthenticationMethodImplFromJson(json);

  @override
  final String method;
  @override
  final String aal;
  @override
  final DateTime completedAt;

  @override
  String toString() {
    return 'AuthenticationMethod(method: $method, aal: $aal, completedAt: $completedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticationMethodImpl &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.aal, aal) || other.aal == aal) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, method, aal, completedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticationMethodImplCopyWith<_$AuthenticationMethodImpl>
      get copyWith =>
          __$$AuthenticationMethodImplCopyWithImpl<_$AuthenticationMethodImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AuthenticationMethodImplToJson(
      this,
    );
  }
}

abstract class _AuthenticationMethod implements AuthenticationMethod {
  const factory _AuthenticationMethod(
      {required final String method,
      required final String aal,
      required final DateTime completedAt}) = _$AuthenticationMethodImpl;

  factory _AuthenticationMethod.fromJson(Map<String, dynamic> json) =
      _$AuthenticationMethodImpl.fromJson;

  @override
  String get method;
  @override
  String get aal;
  @override
  DateTime get completedAt;
  @override
  @JsonKey(ignore: true)
  _$$AuthenticationMethodImplCopyWith<_$AuthenticationMethodImpl>
      get copyWith => throw _privateConstructorUsedError;
}

Device _$DeviceFromJson(Map<String, dynamic> json) {
  return _Device.fromJson(json);
}

/// @nodoc
mixin _$Device {
  String get id => throw _privateConstructorUsedError;
  String get ipAddress => throw _privateConstructorUsedError;
  String get userAgent => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeviceCopyWith<Device> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceCopyWith<$Res> {
  factory $DeviceCopyWith(Device value, $Res Function(Device) then) =
      _$DeviceCopyWithImpl<$Res, Device>;
  @useResult
  $Res call({String id, String ipAddress, String userAgent, String location});
}

/// @nodoc
class _$DeviceCopyWithImpl<$Res, $Val extends Device>
    implements $DeviceCopyWith<$Res> {
  _$DeviceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ipAddress = null,
    Object? userAgent = null,
    Object? location = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ipAddress: null == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String,
      userAgent: null == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeviceImplCopyWith<$Res> implements $DeviceCopyWith<$Res> {
  factory _$$DeviceImplCopyWith(
          _$DeviceImpl value, $Res Function(_$DeviceImpl) then) =
      __$$DeviceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, String ipAddress, String userAgent, String location});
}

/// @nodoc
class __$$DeviceImplCopyWithImpl<$Res>
    extends _$DeviceCopyWithImpl<$Res, _$DeviceImpl>
    implements _$$DeviceImplCopyWith<$Res> {
  __$$DeviceImplCopyWithImpl(
      _$DeviceImpl _value, $Res Function(_$DeviceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? ipAddress = null,
    Object? userAgent = null,
    Object? location = null,
  }) {
    return _then(_$DeviceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      ipAddress: null == ipAddress
          ? _value.ipAddress
          : ipAddress // ignore: cast_nullable_to_non_nullable
              as String,
      userAgent: null == userAgent
          ? _value.userAgent
          : userAgent // ignore: cast_nullable_to_non_nullable
              as String,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeviceImpl implements _Device {
  const _$DeviceImpl(
      {required this.id,
      required this.ipAddress,
      required this.userAgent,
      required this.location});

  factory _$DeviceImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeviceImplFromJson(json);

  @override
  final String id;
  @override
  final String ipAddress;
  @override
  final String userAgent;
  @override
  final String location;

  @override
  String toString() {
    return 'Device(id: $id, ipAddress: $ipAddress, userAgent: $userAgent, location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeviceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.ipAddress, ipAddress) ||
                other.ipAddress == ipAddress) &&
            (identical(other.userAgent, userAgent) ||
                other.userAgent == userAgent) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, ipAddress, userAgent, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DeviceImplCopyWith<_$DeviceImpl> get copyWith =>
      __$$DeviceImplCopyWithImpl<_$DeviceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeviceImplToJson(
      this,
    );
  }
}

abstract class _Device implements Device {
  const factory _Device(
      {required final String id,
      required final String ipAddress,
      required final String userAgent,
      required final String location}) = _$DeviceImpl;

  factory _Device.fromJson(Map<String, dynamic> json) = _$DeviceImpl.fromJson;

  @override
  String get id;
  @override
  String get ipAddress;
  @override
  String get userAgent;
  @override
  String get location;
  @override
  @JsonKey(ignore: true)
  _$$DeviceImplCopyWith<_$DeviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
