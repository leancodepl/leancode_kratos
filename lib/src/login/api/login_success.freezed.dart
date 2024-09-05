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

Identity _$IdentityFromJson(Map<String, dynamic> json) {
  return _Identity.fromJson(json);
}

/// @nodoc
mixin _$Identity {
  String get id => throw _privateConstructorUsedError;
  String get schemaId => throw _privateConstructorUsedError;
  String get schemaUrl => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  DateTime? get stateChangedAt => throw _privateConstructorUsedError;
  Map<String, dynamic> get traits => throw _privateConstructorUsedError;
  List<VerifiableAddress> get verifiableAddresses =>
      throw _privateConstructorUsedError;
  List<RecoveryAddress> get recoveryAddresses =>
      throw _privateConstructorUsedError;
  dynamic get metadataPublic => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

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
      {String id,
      String schemaId,
      String schemaUrl,
      String state,
      DateTime? stateChangedAt,
      Map<String, dynamic> traits,
      List<VerifiableAddress> verifiableAddresses,
      List<RecoveryAddress> recoveryAddresses,
      dynamic metadataPublic,
      DateTime createdAt,
      DateTime updatedAt});
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
    Object? id = null,
    Object? schemaId = null,
    Object? schemaUrl = null,
    Object? state = null,
    Object? stateChangedAt = freezed,
    Object? traits = null,
    Object? verifiableAddresses = null,
    Object? recoveryAddresses = null,
    Object? metadataPublic = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      schemaId: null == schemaId
          ? _value.schemaId
          : schemaId // ignore: cast_nullable_to_non_nullable
              as String,
      schemaUrl: null == schemaUrl
          ? _value.schemaUrl
          : schemaUrl // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      stateChangedAt: freezed == stateChangedAt
          ? _value.stateChangedAt
          : stateChangedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      traits: null == traits
          ? _value.traits
          : traits // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      verifiableAddresses: null == verifiableAddresses
          ? _value.verifiableAddresses
          : verifiableAddresses // ignore: cast_nullable_to_non_nullable
              as List<VerifiableAddress>,
      recoveryAddresses: null == recoveryAddresses
          ? _value.recoveryAddresses
          : recoveryAddresses // ignore: cast_nullable_to_non_nullable
              as List<RecoveryAddress>,
      metadataPublic: freezed == metadataPublic
          ? _value.metadataPublic
          : metadataPublic // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      {String id,
      String schemaId,
      String schemaUrl,
      String state,
      DateTime? stateChangedAt,
      Map<String, dynamic> traits,
      List<VerifiableAddress> verifiableAddresses,
      List<RecoveryAddress> recoveryAddresses,
      dynamic metadataPublic,
      DateTime createdAt,
      DateTime updatedAt});
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
    Object? id = null,
    Object? schemaId = null,
    Object? schemaUrl = null,
    Object? state = null,
    Object? stateChangedAt = freezed,
    Object? traits = null,
    Object? verifiableAddresses = null,
    Object? recoveryAddresses = null,
    Object? metadataPublic = freezed,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$IdentityImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      schemaId: null == schemaId
          ? _value.schemaId
          : schemaId // ignore: cast_nullable_to_non_nullable
              as String,
      schemaUrl: null == schemaUrl
          ? _value.schemaUrl
          : schemaUrl // ignore: cast_nullable_to_non_nullable
              as String,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      stateChangedAt: freezed == stateChangedAt
          ? _value.stateChangedAt
          : stateChangedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      traits: null == traits
          ? _value._traits
          : traits // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      verifiableAddresses: null == verifiableAddresses
          ? _value._verifiableAddresses
          : verifiableAddresses // ignore: cast_nullable_to_non_nullable
              as List<VerifiableAddress>,
      recoveryAddresses: null == recoveryAddresses
          ? _value._recoveryAddresses
          : recoveryAddresses // ignore: cast_nullable_to_non_nullable
              as List<RecoveryAddress>,
      metadataPublic: freezed == metadataPublic
          ? _value.metadataPublic
          : metadataPublic // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$IdentityImpl implements _Identity {
  const _$IdentityImpl(
      {required this.id,
      required this.schemaId,
      required this.schemaUrl,
      required this.state,
      required this.stateChangedAt,
      required final Map<String, dynamic> traits,
      required final List<VerifiableAddress> verifiableAddresses,
      required final List<RecoveryAddress> recoveryAddresses,
      required this.metadataPublic,
      required this.createdAt,
      required this.updatedAt})
      : _traits = traits,
        _verifiableAddresses = verifiableAddresses,
        _recoveryAddresses = recoveryAddresses;

  factory _$IdentityImpl.fromJson(Map<String, dynamic> json) =>
      _$$IdentityImplFromJson(json);

  @override
  final String id;
  @override
  final String schemaId;
  @override
  final String schemaUrl;
  @override
  final String state;
  @override
  final DateTime? stateChangedAt;
  final Map<String, dynamic> _traits;
  @override
  Map<String, dynamic> get traits {
    if (_traits is EqualUnmodifiableMapView) return _traits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_traits);
  }

  final List<VerifiableAddress> _verifiableAddresses;
  @override
  List<VerifiableAddress> get verifiableAddresses {
    if (_verifiableAddresses is EqualUnmodifiableListView)
      return _verifiableAddresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_verifiableAddresses);
  }

  final List<RecoveryAddress> _recoveryAddresses;
  @override
  List<RecoveryAddress> get recoveryAddresses {
    if (_recoveryAddresses is EqualUnmodifiableListView)
      return _recoveryAddresses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_recoveryAddresses);
  }

  @override
  final dynamic metadataPublic;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

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
      {required final String id,
      required final String schemaId,
      required final String schemaUrl,
      required final String state,
      required final DateTime? stateChangedAt,
      required final Map<String, dynamic> traits,
      required final List<VerifiableAddress> verifiableAddresses,
      required final List<RecoveryAddress> recoveryAddresses,
      required final dynamic metadataPublic,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$IdentityImpl;

  factory _Identity.fromJson(Map<String, dynamic> json) =
      _$IdentityImpl.fromJson;

  @override
  String get id;
  @override
  String get schemaId;
  @override
  String get schemaUrl;
  @override
  String get state;
  @override
  DateTime? get stateChangedAt;
  @override
  Map<String, dynamic> get traits;
  @override
  List<VerifiableAddress> get verifiableAddresses;
  @override
  List<RecoveryAddress> get recoveryAddresses;
  @override
  dynamic get metadataPublic;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
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
  String get id => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  String get via => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

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
      {String id,
      String value,
      String via,
      DateTime createdAt,
      DateTime updatedAt});
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
    Object? id = null,
    Object? value = null,
    Object? via = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      via: null == via
          ? _value.via
          : via // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
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
      {String id,
      String value,
      String via,
      DateTime createdAt,
      DateTime updatedAt});
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
    Object? id = null,
    Object? value = null,
    Object? via = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$RecoveryAddressImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      via: null == via
          ? _value.via
          : via // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RecoveryAddressImpl implements _RecoveryAddress {
  const _$RecoveryAddressImpl(
      {required this.id,
      required this.value,
      required this.via,
      required this.createdAt,
      required this.updatedAt});

  factory _$RecoveryAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$RecoveryAddressImplFromJson(json);

  @override
  final String id;
  @override
  final String value;
  @override
  final String via;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

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
      {required final String id,
      required final String value,
      required final String via,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$RecoveryAddressImpl;

  factory _RecoveryAddress.fromJson(Map<String, dynamic> json) =
      _$RecoveryAddressImpl.fromJson;

  @override
  String get id;
  @override
  String get value;
  @override
  String get via;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
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
  String get value => throw _privateConstructorUsedError;
  bool get verified => throw _privateConstructorUsedError;
  String get via => throw _privateConstructorUsedError;
  String get status => throw _privateConstructorUsedError;
  DateTime? get verifiedAt => throw _privateConstructorUsedError;
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
      String value,
      bool verified,
      String via,
      String status,
      DateTime? verifiedAt,
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
    Object? value = null,
    Object? verified = null,
    Object? via = null,
    Object? status = null,
    Object? verifiedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      via: null == via
          ? _value.via
          : via // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      String value,
      bool verified,
      String via,
      String status,
      DateTime? verifiedAt,
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
    Object? value = null,
    Object? verified = null,
    Object? via = null,
    Object? status = null,
    Object? verifiedAt = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$VerifiableAddressImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      verified: null == verified
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool,
      via: null == via
          ? _value.via
          : via // ignore: cast_nullable_to_non_nullable
              as String,
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String,
      verifiedAt: freezed == verifiedAt
          ? _value.verifiedAt
          : verifiedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
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
      required this.value,
      required this.verified,
      required this.via,
      required this.status,
      this.verifiedAt,
      this.createdAt,
      this.updatedAt});

  factory _$VerifiableAddressImpl.fromJson(Map<String, dynamic> json) =>
      _$$VerifiableAddressImplFromJson(json);

  @override
  final String? id;
  @override
  final String value;
  @override
  final bool verified;
  @override
  final String via;
  @override
  final String status;
  @override
  final DateTime? verifiedAt;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'VerifiableAddress(id: $id, value: $value, verified: $verified, via: $via, status: $status, verifiedAt: $verifiedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
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
            (identical(other.verifiedAt, verifiedAt) ||
                other.verifiedAt == verifiedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, value, verified, via, status,
      verifiedAt, createdAt, updatedAt);

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
      required final String value,
      required final bool verified,
      required final String via,
      required final String status,
      final DateTime? verifiedAt,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$VerifiableAddressImpl;

  factory _VerifiableAddress.fromJson(Map<String, dynamic> json) =
      _$VerifiableAddressImpl.fromJson;

  @override
  String? get id;
  @override
  String get value;
  @override
  bool get verified;
  @override
  String get via;
  @override
  String get status;
  @override
  DateTime? get verifiedAt;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$VerifiableAddressImplCopyWith<_$VerifiableAddressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
