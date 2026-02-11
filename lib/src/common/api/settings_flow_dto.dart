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

  String? get csrfToken =>
      ui.nodes
              .firstWhereOrNull((node) => node.attributes.name == 'csrf_token')
              ?.attributes
              .value
          as String?;

  Map<String, dynamic>? get passkeyCreationOptions {
    final passkeyCreation =
        ui.nodes
                .firstWhereOrNull(
                  (node) => node.attributes.name == 'passkey_create_data',
                )
                ?.attributes
                .value
            as String?;

    return passkeyCreation != null
        ? getPasskeyOptionsFromString(passkeyCreation)
        : null;
  }

  /// Returns the set of OIDC providers that are currently linked to the user.
  /// These are identified by 'unlink' nodes in the settings flow.
  Set<String> get linkedOidcProviders => ui.nodes
      .where((n) => n.group == 'oidc' && n.attributes.name == 'unlink')
      .map((n) => n.attributes.value as String)
      .toSet();

  /// Returns the set of OIDC providers that can be linked to the user.
  /// These are identified by 'link' nodes in the settings flow.
  Set<String> get linkableOidcProviders => ui.nodes
      .where((n) => n.group == 'oidc' && n.attributes.name == 'link')
      .map((n) => n.attributes.value as String)
      .toSet();

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
