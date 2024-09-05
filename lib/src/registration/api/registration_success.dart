import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';
import 'package:leancode_kratos_client/src/common/api/continue_with.dart';
import 'package:leancode_kratos_client/src/common/api/identity.dart';
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
    // Undocumented response for linking accounts
    String? id,
    String? oauth2LoginChallenge,
    String? type,
    DateTime? expiresAt,
    DateTime? issuedAt,
    String? requestUrl,
    String? returnTo,
    UiDto? ui,
    String? sessionTokenExchangeCode,
  }) = _RegistrationSuccessResponse;

  factory RegistrationSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$RegistrationSuccessResponseFromJson(json);

  factory RegistrationSuccessResponse.fromString(String string) {
    return RegistrationSuccessResponse.fromJson(
      json.decode(string) as Map<String, dynamic>,
    );
  }

  const RegistrationSuccessResponse._();

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