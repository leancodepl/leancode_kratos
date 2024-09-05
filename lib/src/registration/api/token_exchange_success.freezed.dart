// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_exchange_success.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenExchangeSuccess _$TokenExchangeSuccessFromJson(Map<String, dynamic> json) {
  return _TokenExchangeSuccess.fromJson(json);
}

/// @nodoc
mixin _$TokenExchangeSuccess {
  String? get sessionToken => throw _privateConstructorUsedError;
  Session get session => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenExchangeSuccessCopyWith<TokenExchangeSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenExchangeSuccessCopyWith<$Res> {
  factory $TokenExchangeSuccessCopyWith(TokenExchangeSuccess value,
          $Res Function(TokenExchangeSuccess) then) =
      _$TokenExchangeSuccessCopyWithImpl<$Res, TokenExchangeSuccess>;
  @useResult
  $Res call({String? sessionToken, Session session});

  $SessionCopyWith<$Res> get session;
}

/// @nodoc
class _$TokenExchangeSuccessCopyWithImpl<$Res,
        $Val extends TokenExchangeSuccess>
    implements $TokenExchangeSuccessCopyWith<$Res> {
  _$TokenExchangeSuccessCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionToken = freezed,
    Object? session = null,
  }) {
    return _then(_value.copyWith(
      sessionToken: freezed == sessionToken
          ? _value.sessionToken
          : sessionToken // ignore: cast_nullable_to_non_nullable
              as String?,
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
abstract class _$$TokenExchangeSuccessImplCopyWith<$Res>
    implements $TokenExchangeSuccessCopyWith<$Res> {
  factory _$$TokenExchangeSuccessImplCopyWith(_$TokenExchangeSuccessImpl value,
          $Res Function(_$TokenExchangeSuccessImpl) then) =
      __$$TokenExchangeSuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? sessionToken, Session session});

  @override
  $SessionCopyWith<$Res> get session;
}

/// @nodoc
class __$$TokenExchangeSuccessImplCopyWithImpl<$Res>
    extends _$TokenExchangeSuccessCopyWithImpl<$Res, _$TokenExchangeSuccessImpl>
    implements _$$TokenExchangeSuccessImplCopyWith<$Res> {
  __$$TokenExchangeSuccessImplCopyWithImpl(_$TokenExchangeSuccessImpl _value,
      $Res Function(_$TokenExchangeSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sessionToken = freezed,
    Object? session = null,
  }) {
    return _then(_$TokenExchangeSuccessImpl(
      sessionToken: freezed == sessionToken
          ? _value.sessionToken
          : sessionToken // ignore: cast_nullable_to_non_nullable
              as String?,
      session: null == session
          ? _value.session
          : session // ignore: cast_nullable_to_non_nullable
              as Session,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenExchangeSuccessImpl implements _TokenExchangeSuccess {
  const _$TokenExchangeSuccessImpl({this.sessionToken, required this.session});

  factory _$TokenExchangeSuccessImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenExchangeSuccessImplFromJson(json);

  @override
  final String? sessionToken;
  @override
  final Session session;

  @override
  String toString() {
    return 'TokenExchangeSuccess(sessionToken: $sessionToken, session: $session)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenExchangeSuccessImpl &&
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
  _$$TokenExchangeSuccessImplCopyWith<_$TokenExchangeSuccessImpl>
      get copyWith =>
          __$$TokenExchangeSuccessImplCopyWithImpl<_$TokenExchangeSuccessImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenExchangeSuccessImplToJson(
      this,
    );
  }
}

abstract class _TokenExchangeSuccess implements TokenExchangeSuccess {
  const factory _TokenExchangeSuccess(
      {final String? sessionToken,
      required final Session session}) = _$TokenExchangeSuccessImpl;

  factory _TokenExchangeSuccess.fromJson(Map<String, dynamic> json) =
      _$TokenExchangeSuccessImpl.fromJson;

  @override
  String? get sessionToken;
  @override
  Session get session;
  @override
  @JsonKey(ignore: true)
  _$$TokenExchangeSuccessImplCopyWith<_$TokenExchangeSuccessImpl>
      get copyWith => throw _privateConstructorUsedError;
}
