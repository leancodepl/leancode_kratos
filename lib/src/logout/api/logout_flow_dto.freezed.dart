// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'logout_flow_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LogoutFlowDto _$LogoutFlowDtoFromJson(Map<String, dynamic> json) {
  return _LogoutFlowDto.fromJson(json);
}

/// @nodoc
mixin _$LogoutFlowDto {
  String get logoutUrl => throw _privateConstructorUsedError;
  String get logoutToken => throw _privateConstructorUsedError;

  /// Serializes this LogoutFlowDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LogoutFlowDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LogoutFlowDtoCopyWith<LogoutFlowDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LogoutFlowDtoCopyWith<$Res> {
  factory $LogoutFlowDtoCopyWith(
          LogoutFlowDto value, $Res Function(LogoutFlowDto) then) =
      _$LogoutFlowDtoCopyWithImpl<$Res, LogoutFlowDto>;
  @useResult
  $Res call({String logoutUrl, String logoutToken});
}

/// @nodoc
class _$LogoutFlowDtoCopyWithImpl<$Res, $Val extends LogoutFlowDto>
    implements $LogoutFlowDtoCopyWith<$Res> {
  _$LogoutFlowDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LogoutFlowDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logoutUrl = null,
    Object? logoutToken = null,
  }) {
    return _then(_value.copyWith(
      logoutUrl: null == logoutUrl
          ? _value.logoutUrl
          : logoutUrl // ignore: cast_nullable_to_non_nullable
              as String,
      logoutToken: null == logoutToken
          ? _value.logoutToken
          : logoutToken // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LogoutFlowDtoImplCopyWith<$Res>
    implements $LogoutFlowDtoCopyWith<$Res> {
  factory _$$LogoutFlowDtoImplCopyWith(
          _$LogoutFlowDtoImpl value, $Res Function(_$LogoutFlowDtoImpl) then) =
      __$$LogoutFlowDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String logoutUrl, String logoutToken});
}

/// @nodoc
class __$$LogoutFlowDtoImplCopyWithImpl<$Res>
    extends _$LogoutFlowDtoCopyWithImpl<$Res, _$LogoutFlowDtoImpl>
    implements _$$LogoutFlowDtoImplCopyWith<$Res> {
  __$$LogoutFlowDtoImplCopyWithImpl(
      _$LogoutFlowDtoImpl _value, $Res Function(_$LogoutFlowDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LogoutFlowDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? logoutUrl = null,
    Object? logoutToken = null,
  }) {
    return _then(_$LogoutFlowDtoImpl(
      logoutUrl: null == logoutUrl
          ? _value.logoutUrl
          : logoutUrl // ignore: cast_nullable_to_non_nullable
              as String,
      logoutToken: null == logoutToken
          ? _value.logoutToken
          : logoutToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LogoutFlowDtoImpl implements _LogoutFlowDto {
  const _$LogoutFlowDtoImpl(
      {required this.logoutUrl, required this.logoutToken});

  factory _$LogoutFlowDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LogoutFlowDtoImplFromJson(json);

  @override
  final String logoutUrl;
  @override
  final String logoutToken;

  @override
  String toString() {
    return 'LogoutFlowDto(logoutUrl: $logoutUrl, logoutToken: $logoutToken)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LogoutFlowDtoImpl &&
            (identical(other.logoutUrl, logoutUrl) ||
                other.logoutUrl == logoutUrl) &&
            (identical(other.logoutToken, logoutToken) ||
                other.logoutToken == logoutToken));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, logoutUrl, logoutToken);

  /// Create a copy of LogoutFlowDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LogoutFlowDtoImplCopyWith<_$LogoutFlowDtoImpl> get copyWith =>
      __$$LogoutFlowDtoImplCopyWithImpl<_$LogoutFlowDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LogoutFlowDtoImplToJson(
      this,
    );
  }
}

abstract class _LogoutFlowDto implements LogoutFlowDto {
  const factory _LogoutFlowDto(
      {required final String logoutUrl,
      required final String logoutToken}) = _$LogoutFlowDtoImpl;

  factory _LogoutFlowDto.fromJson(Map<String, dynamic> json) =
      _$LogoutFlowDtoImpl.fromJson;

  @override
  String get logoutUrl;
  @override
  String get logoutToken;

  /// Create a copy of LogoutFlowDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LogoutFlowDtoImplCopyWith<_$LogoutFlowDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
