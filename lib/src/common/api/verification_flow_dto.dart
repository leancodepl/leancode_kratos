import 'dart:convert';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';

part 'verification_flow_dto.freezed.dart';
part 'verification_flow_dto.g.dart';

@freezed
class VerificationFlowDto with _$VerificationFlowDto {
  const factory VerificationFlowDto({
    String? active,
    DateTime? expiresAt,
    required String id,
    DateTime? issuedAt,
    String? requestUrl,
    String? returnTo,
    required String state,
    required String type,
    required UiDto ui,
  }) = _VerificationFlowDto;

  factory VerificationFlowDto.fromString(String string) =>
      VerificationFlowDto.fromJson(json.decode(string) as Map<String, dynamic>);

  factory VerificationFlowDto.fromJson(Map<String, dynamic> json) =>
      _$VerificationFlowDtoFromJson(json);
}
