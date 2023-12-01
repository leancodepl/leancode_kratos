import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leancode_kratos_client/src/login/api/login_success.dart';

part 'registration_success.freezed.dart';
part 'registration_success.g.dart';

@freezed
class RegistrationSuccessResponse with _$RegistrationSuccessResponse {
  const factory RegistrationSuccessResponse({
    List<ContinueWith>? continueWith,
    Identity? identity,
    Session? session,
    String? sessionToken,
  }) = _RegistrationSuccessResponse;

  factory RegistrationSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$RegistrationSuccessResponseFromJson(json);

  factory RegistrationSuccessResponse.fromString(String string) {
    return RegistrationSuccessResponse.fromJson(
      json.decode(string) as Map<String, dynamic>,
    );
  }
}

@freezed
class RegistrationBrowserLocationChangeRequiredResponse
    with _$RegistrationBrowserLocationChangeRequiredResponse {
  const factory RegistrationBrowserLocationChangeRequiredResponse({
    String? redirectBrowserTo,
  }) = _RegistrationBrowserLocationChangeRequiredResponse;

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
}

@freezed
class ContinueWith with _$ContinueWith {
  const factory ContinueWith({
    String? action,
    Flow? flow,
  }) = _ContinueWith;

  factory ContinueWith.fromJson(Map<String, dynamic> json) =>
      _$ContinueWithFromJson(json);
}

@freezed
class Flow with _$Flow {
  const factory Flow({
    String? id,
    String? verifiableAddress,
  }) = _Flow;

  factory Flow.fromJson(Map<String, dynamic> json) => _$FlowFromJson(json);
}

@freezed
class Identity with _$Identity {
  const factory Identity({
    String? id,
    String? schemaId,
    String? schemaUrl,
    String? state,
    DateTime? stateChangedAt,
    Map<String, dynamic>? traits,
    List<VerifiableAddress>? verifiableAddresses,
    List<RecoveryAddress>? recoveryAddresses,
    dynamic metadataPublic,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _Identity;

  factory Identity.fromJson(Map<String, dynamic> json) =>
      _$IdentityFromJson(json);
}

@freezed
class RecoveryAddress with _$RecoveryAddress {
  const factory RecoveryAddress({
    String? id,
    String? value,
    String? via,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _RecoveryAddress;

  factory RecoveryAddress.fromJson(Map<String, dynamic> json) =>
      _$RecoveryAddressFromJson(json);
}

@freezed
class VerifiableAddress with _$VerifiableAddress {
  const factory VerifiableAddress({
    String? id,
    String? value,
    bool? verified,
    String? via,
    String? status,
    DateTime? createdAt,
    DateTime? updatedAt,
  }) = _VerifiableAddress;

  factory VerifiableAddress.fromJson(Map<String, dynamic> json) =>
      _$VerifiableAddressFromJson(json);
}
