import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';

part 'verification_flow_dto.g.dart';

@JsonSerializable()
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
      VerificationFlowDto.fromJson(json.decode(string) as Map<String, dynamic>);

  factory VerificationFlowDto.fromJson(Map<String, dynamic> json) =>
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

  Map<String, dynamic> toJson() => _$VerificationFlowDtoToJson(this);

  /// The address the flow's code was sent to, carried by the "resend code"
  /// submit node. Present once the flow reaches the `sent_email` state; the
  /// `email` node in `choose_method` is the input field and has no value.
  String? get email =>
      ui.nodes
              .firstWhereOrNull(
                (node) =>
                    node.attributes.name == 'email' &&
                    node.attributes.type == 'submit',
              )
              ?.attributes
              .value
          as String?;

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
