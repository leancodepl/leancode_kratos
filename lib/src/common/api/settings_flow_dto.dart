import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';
import 'package:leancode_kratos_client/src/utils/passkey_parsing.dart';

part 'settings_flow_dto.g.dart';

@JsonSerializable()
class SettingsFlowDto with EquatableMixin {
  const SettingsFlowDto({
    required this.id,
    required this.type,
    required this.expiresAt,
    required this.issuedAt,
    required this.requestUrl,
    this.returnTo,
    required this.ui,
    this.sessionTokenExchangeCode,
  });

  factory SettingsFlowDto.fromString(String string) =>
      SettingsFlowDto.fromJson(json.decode(string) as Map<String, dynamic>);

  factory SettingsFlowDto.fromJson(Map<String, dynamic> json) =>
      _$SettingsFlowDtoFromJson(json);

  final String id;
  final String type;
  final DateTime expiresAt;
  final DateTime issuedAt;
  final String requestUrl;
  final String? returnTo;
  final UiDto ui;
  final String? sessionTokenExchangeCode;

  Map<String, dynamic> toJson() => _$SettingsFlowDtoToJson(this);

  String? get csrfToken => ui.nodes
      .firstWhereOrNull((node) => node.attributes.name == 'csrf_token')
      ?.attributes
      .value as String?;

  Map<String, dynamic>? get passkeyCreationOptions {
    final passkeyCreation = ui.nodes
        .firstWhereOrNull(
          (node) => node.attributes.name == 'passkey_create_data',
        )
        ?.attributes
        .value as String?;

    return passkeyCreation != null
        ? getPasskeyOptionsFromString(passkeyCreation)
        : null;
  }

  @override
  List<Object?> get props => [
        id,
        type,
        expiresAt,
        issuedAt,
        requestUrl,
        returnTo,
        ui,
        sessionTokenExchangeCode,
      ];
}
