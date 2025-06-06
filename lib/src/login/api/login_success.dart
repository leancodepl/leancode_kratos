import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'login_success.g.dart';

SuccessLoginResponse loginSuccessResponseFromJson(String str) =>
    SuccessLoginResponse.fromJson(json.decode(str) as Map<String, dynamic>);

@JsonSerializable()
class SuccessLoginResponse with EquatableMixin {
  /// - [sessionToken] may be null on Web.
  const SuccessLoginResponse({
    required this.sessionToken,
    required this.session,
  });

  factory SuccessLoginResponse.fromJson(Map<String, dynamic> json) =>
      _$SuccessLoginResponseFromJson(json);

  final String? sessionToken;
  final Session session;

  Map<String, dynamic> toJson() => _$SuccessLoginResponseToJson(this);

  @override
  List<Object?> get props => [sessionToken, session];
}

@JsonSerializable()
class Session with EquatableMixin {
  const Session({
    required this.id,
    required this.active,
    required this.expiresAt,
    required this.authenticatedAt,
    required this.authenticatorAssuranceLevel,
    required this.authenticationMethods,
    required this.issuedAt,
    required this.identity,
    required this.devices,
  });

  factory Session.fromJson(Map<String, dynamic> json) =>
      _$SessionFromJson(json);

  final String id;
  final bool active;
  final DateTime expiresAt;
  final DateTime authenticatedAt;
  final String authenticatorAssuranceLevel;
  final List<AuthenticationMethod> authenticationMethods;
  final DateTime issuedAt;
  final Identity identity;
  final List<Device> devices;

  Map<String, dynamic> toJson() => _$SessionToJson(this);

  @override
  List<Object?> get props => [
        id,
        active,
        expiresAt,
        authenticatedAt,
        authenticatorAssuranceLevel,
        authenticationMethods,
        issuedAt,
        identity,
        devices,
      ];
}

@JsonSerializable()
class AuthenticationMethod with EquatableMixin {
  const AuthenticationMethod({
    required this.method,
    required this.aal,
    required this.completedAt,
  });

  factory AuthenticationMethod.fromJson(Map<String, dynamic> json) =>
      _$AuthenticationMethodFromJson(json);

  final String method;
  final String aal;
  final DateTime completedAt;

  Map<String, dynamic> toJson() => _$AuthenticationMethodToJson(this);

  @override
  List<Object?> get props => [method, aal, completedAt];
}

@JsonSerializable()
class Device with EquatableMixin {
  const Device({
    required this.id,
    required this.ipAddress,
    required this.userAgent,
    required this.location,
  });

  factory Device.fromJson(Map<String, dynamic> json) => _$DeviceFromJson(json);

  final String id;
  final String ipAddress;
  final String userAgent;
  final String location;

  Map<String, dynamic> toJson() => _$DeviceToJson(this);

  @override
  List<Object?> get props => [id, ipAddress, userAgent, location];
}

@JsonSerializable()
class Identity with EquatableMixin {
  const Identity({
    required this.id,
    required this.schemaId,
    required this.schemaUrl,
    required this.state,
    required this.stateChangedAt,
    required this.traits,
    required this.verifiableAddresses,
    required this.recoveryAddresses,
    required this.metadataPublic,
    required this.createdAt,
    required this.updatedAt,
  });

  factory Identity.fromJson(Map<String, dynamic> json) =>
      _$IdentityFromJson(json);

  final String id;
  final String schemaId;
  final String schemaUrl;
  final String state;
  final DateTime? stateChangedAt;
  final Map<String, dynamic> traits;
  final List<VerifiableAddress> verifiableAddresses;
  final List<RecoveryAddress> recoveryAddresses;
  final dynamic metadataPublic;
  final DateTime createdAt;
  final DateTime updatedAt;

  Map<String, dynamic> toJson() => _$IdentityToJson(this);

  @override
  List<Object?> get props => [
        id,
        schemaId,
        schemaUrl,
        state,
        stateChangedAt,
        traits,
        verifiableAddresses,
        recoveryAddresses,
        metadataPublic,
        createdAt,
        updatedAt,
      ];
}

@JsonSerializable()
class RecoveryAddress with EquatableMixin {
  const RecoveryAddress({
    required this.id,
    required this.value,
    required this.via,
    required this.createdAt,
    required this.updatedAt,
  });

  factory RecoveryAddress.fromJson(Map<String, dynamic> json) =>
      _$RecoveryAddressFromJson(json);

  final String id;
  final String value;
  final String via;
  final DateTime createdAt;
  final DateTime updatedAt;

  Map<String, dynamic> toJson() => _$RecoveryAddressToJson(this);

  @override
  List<Object?> get props => [id, value, via, createdAt, updatedAt];
}

@JsonSerializable()
class VerifiableAddress with EquatableMixin {
  const VerifiableAddress({
    this.id,
    required this.value,
    required this.verified,
    required this.via,
    required this.status,
    this.verifiedAt,
    this.createdAt,
    this.updatedAt,
  });

  factory VerifiableAddress.fromJson(Map<String, dynamic> json) =>
      _$VerifiableAddressFromJson(json);

  final String? id;
  final String value;
  final bool verified;
  final String via;
  final String status;
  final DateTime? verifiedAt;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => _$VerifiableAddressToJson(this);

  @override
  List<Object?> get props => [
        id,
        value,
        verified,
        via,
        status,
        verifiedAt,
        createdAt,
        updatedAt,
      ];
}
