import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';
import 'package:leancode_kratos_client/src/common/api/continue_with.dart';
import 'package:leancode_kratos_client/src/common/api/identity.dart';

part 'profile_settings.freezed.dart';
part 'profile_settings.g.dart';

ProfileSettingsSuccessResponse profileSettingsSuccessResponseFromJson(
  String str,
) =>
    ProfileSettingsSuccessResponse.fromJson(
      json.decode(str) as Map<String, dynamic>,
    );

@freezed
class ProfileSettingsSuccessResponse with _$ProfileSettingsSuccessResponse {
  const factory ProfileSettingsSuccessResponse({
    String? active,
    List<ContinueWith>? continueWith,
    DateTime? expiresAt,
    String? id,
    Identity? identity,
    DateTime? issuedAt,
    String? requestUrl,
    String? returnTo,
    String? type,
    UiDto? ui,
  }) = _ProfileSettingsSuccessResponse;

  factory ProfileSettingsSuccessResponse.fromJson(Map<String, dynamic> json) =>
      _$ProfileSettingsSuccessResponseFromJson(json);
}
