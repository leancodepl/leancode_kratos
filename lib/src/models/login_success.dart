import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_success.g.dart';
part 'login_success.freezed.dart';

SuccessLoginResponse loginSuccessResponseFromJson(String str) =>
    SuccessLoginResponse.fromJson(json.decode(str));

@freezed
class SuccessLoginResponse with _$SuccessLoginResponse {
  const factory SuccessLoginResponse({
    required String sessionToken,
    required Session session,
  }) = _SuccessLoginResponse;

  factory SuccessLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$SuccessLoginResponseFromJson(json);
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

@freezed
class Identity with _$Identity {
  const factory Identity({
    required String id,
    required String schemaId,
    required String schemaUrl,
    required String state,
    required DateTime stateChangedAt,
    required Traits traits,
    required List<VerifiableAddress> verifiableAddresses,
    required List<RecoveryAddress> recoveryAddresses,
    required dynamic metadataPublic,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Identity;

    factory Identity.fromJson(Map<String, dynamic> json) => _$IdentityFromJson(json);
}

@freezed
class RecoveryAddress with _$RecoveryAddress {
  const factory RecoveryAddress({
    required String id,
    required String value,
    required String via,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _RecoveryAddress;
  factory RecoveryAddress.fromJson(Map<String, dynamic> json) => _$RecoveryAddressFromJson(json);
}

@freezed
class Traits with _$Traits {
  const factory Traits({
    required String email,
    required String givenName,
    required String familyName,
    required bool regulationsAccepted,
  }) = _Traits;

  factory Traits.fromJson(Map<String, dynamic> json) => _$TraitsFromJson(json);
}

@freezed
class VerifiableAddress with _$VerifiableAddress {
  const factory VerifiableAddress({
    required String id,
    required String value,
    required bool verified,
    required String via,
    required String status,
    required DateTime verifiedAt,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _VerifiableAddress;

  factory VerifiableAddress.fromJson(Map<String, dynamic> json) => _$VerifiableAddressFromJson(json);
}
