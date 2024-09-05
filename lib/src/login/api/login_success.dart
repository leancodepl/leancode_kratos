import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leancode_kratos_client/src/common/api/identity.dart';

part 'login_success.g.dart';
part 'login_success.freezed.dart';

LoginSuccessResponse loginSuccessResponseFromJson(String str) =>
    LoginSuccessResponse.fromJson(json.decode(str) as Map<String, dynamic>);

@freezed
class LoginSuccessResponse with _$LoginSuccessResponse {
  const factory LoginSuccessResponse({
    required String sessionToken,
    required Session session,
  }) = _LoginSuccessResponse;

  factory LoginSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginSuccessResponseFromJson(json);
}

@freezed
class Session with _$Session {
  const factory Session({
    required String id,
    required bool active,
    required DateTime expiresAt,
    required DateTime authenticatedAt,
    required String authenticatorAssuranceLevel,
    required List<AuthenticationMethod> authenticationMethods,
    required DateTime issuedAt,
    required Identity identity,
    required List<Device> devices,
  }) = _Session;

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);
}

@freezed
class AuthenticationMethod with _$AuthenticationMethod {
  const factory AuthenticationMethod({
    required String method,
    required String aal,
    required DateTime completedAt,
  }) = _AuthenticationMethod;
  factory AuthenticationMethod.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationMethodFromJson(json);
}

@freezed
class Device with _$Device {
  const factory Device({
    required String id,
    required String ipAddress,
    required String userAgent,
    required String location,
  }) = _Device;
  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);
}