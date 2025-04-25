import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';
import 'package:leancode_kratos_client/src/login/api/login_success.dart';

part 'registration_success.g.dart';

class RegistrationSuccessResponse with EquatableMixin {
  const RegistrationSuccessResponse({
    this.continueWith,
    this.identity,
    this.session,
    this.sessionToken,
    // Undocumented response for linking accounts
    this.id,
    this.oauth2LoginChallenge,
    this.type,
    this.expiresAt,
    this.issuedAt,
    this.requestUrl,
    this.returnTo,
    this.ui,
    this.sessionTokenExchangeCode,
  });

  factory RegistrationSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$RegistrationSuccessResponseFromJson(json);

  factory RegistrationSuccessResponse.fromString(String string) {
    return RegistrationSuccessResponse.fromJson(
      json.decode(string) as Map<String, dynamic>,
    );
  }

  final List<ContinueWith>? continueWith;
  final Identity? identity;
  final Session? session;
  final String? sessionToken;
  final String? id;
  final String? oauth2LoginChallenge;
  final String? type;
  final DateTime? expiresAt;
  final DateTime? issuedAt;
  final String? requestUrl;
  final String? returnTo;
  final UiDto? ui;
  final String? sessionTokenExchangeCode;

  Map<String, dynamic> toJson() => _$RegistrationSuccessResponseToJson(this);

  AuthFlowDto? get flow {
    if (this
        case RegistrationSuccessResponse(
          id: final id?,
          type: final type?,
          expiresAt: final expiresAt?,
          issuedAt: final issuedAt?,
          requestUrl: final requestUrl?,
          ui: final ui?,
        )) {
      return AuthFlowDto(
        id: id,
        type: type,
        expiresAt: expiresAt,
        issuedAt: issuedAt,
        requestUrl: requestUrl,
        ui: ui,
      );
    } else {
      return null;
    }
  }

  @override
  List<Object?> get props => [
        continueWith,
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
        sessionTokenExchangeCode,
      ];
}

class RegistrationBrowserLocationChangeRequiredResponse with EquatableMixin {
  const RegistrationBrowserLocationChangeRequiredResponse({
    this.redirectBrowserTo,
  });

  factory RegistrationBrowserLocationChangeRequiredResponse.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$RegistrationBrowserLocationChangeRequiredResponseFromJson(json);

  factory RegistrationBrowserLocationChangeRequiredResponse.fromString(
    String string,
  ) {
    return RegistrationBrowserLocationChangeRequiredResponse.fromJson(
      json.decode(string) as Map<String, dynamic>,
    );
  }

  final String? redirectBrowserTo;

  Map<String, dynamic> toJson() =>
      _$RegistrationBrowserLocationChangeRequiredResponseToJson(this);

  @override
  List<Object?> get props => [redirectBrowserTo];
}

class ContinueWith with EquatableMixin {
  const ContinueWith({
    this.action,
    this.flow,
  });

  factory ContinueWith.fromJson(Map<String, dynamic> json) =>
      _$ContinueWithFromJson(json);

  final String? action;
  final Flow? flow;

  Map<String, dynamic> toJson() => _$ContinueWithToJson(this);

  @override
  List<Object?> get props => [action, flow];
}

class Flow with EquatableMixin {
  const Flow({
    this.id,
    this.verifiableAddress,
  });

  factory Flow.fromJson(Map<String, dynamic> json) => _$FlowFromJson(json);

  final String? id;
  final String? verifiableAddress;

  Map<String, dynamic> toJson() => _$FlowToJson(this);

  @override
  List<Object?> get props => [id, verifiableAddress];
}

class Identity with EquatableMixin {
  const Identity({
    this.id,
    this.schemaId,
    this.schemaUrl,
    this.state,
    this.stateChangedAt,
    this.traits,
    this.verifiableAddresses,
    this.recoveryAddresses,
    this.metadataPublic,
    this.createdAt,
    this.updatedAt,
  });

  factory Identity.fromJson(Map<String, dynamic> json) =>
      _$IdentityFromJson(json);

  final String? id;
  final String? schemaId;
  final String? schemaUrl;
  final String? state;
  final DateTime? stateChangedAt;
  final Map<String, dynamic>? traits;
  final List<VerifiableAddress>? verifiableAddresses;
  final List<RecoveryAddress>? recoveryAddresses;
  final dynamic metadataPublic;
  final DateTime? createdAt;
  final DateTime? updatedAt;

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

class RecoveryAddress with EquatableMixin {
  const RecoveryAddress({
    this.id,
    this.value,
    this.via,
    this.createdAt,
    this.updatedAt,
  });

  factory RecoveryAddress.fromJson(Map<String, dynamic> json) =>
      _$RecoveryAddressFromJson(json);

  final String? id;
  final String? value;
  final String? via;
  final DateTime? createdAt;
  final DateTime? updatedAt;

  Map<String, dynamic> toJson() => _$RecoveryAddressToJson(this);

  @override
  List<Object?> get props => [id, value, via, createdAt, updatedAt];
}

class VerifiableAddress with EquatableMixin {
  const VerifiableAddress({
    this.id,
    this.value,
    this.verified,
    this.via,
    this.status,
    this.createdAt,
    this.updatedAt,
  });

  factory VerifiableAddress.fromJson(Map<String, dynamic> json) =>
      _$VerifiableAddressFromJson(json);

  final String? id;
  final String? value;
  final bool? verified;
  final String? via;
  final String? status;
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
        createdAt,
        updatedAt,
      ];
}
