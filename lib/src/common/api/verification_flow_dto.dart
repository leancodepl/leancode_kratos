import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';
import 'package:leancode_kratos_client/src/json_typedef.dart';

part 'verification_flow_dto.g.dart';

class VerificationFlowDto with EquatableMixin {
  const VerificationFlowDto({
    this.active,
    this.expiresAt,
    required this.id,
    this.issuedAt,
    this.requestUrl,
    this.returnTo,
    required this.state,
    required this.type,
    required this.ui,
  });

  factory VerificationFlowDto.fromString(String string) =>
      VerificationFlowDto.fromJson(json.decode(string) as Json);

  factory VerificationFlowDto.fromJson(Json json) =>
      _$VerificationFlowDtoFromJson(json);

  final String? active;
  final DateTime? expiresAt;
  final String id;
  final DateTime? issuedAt;
  final String? requestUrl;
  final String? returnTo;
  final String state;
  final String type;
  final UiDto ui;

  Json toJson() => _$VerificationFlowDtoToJson(this);

  @override
  List<Object?> get props => [
        active,
        expiresAt,
        id,
        issuedAt,
        requestUrl,
        returnTo,
        state,
        type,
        ui,
      ];
}
