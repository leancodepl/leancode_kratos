import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';
import 'package:leancode_kratos_client/src/utils/passkey_parsing.dart';

part 'settings_flow_dto.freezed.dart';
part 'settings_flow_dto.g.dart';

@freezed
class SettingsFlowDto with _$SettingsFlowDto {
  const factory SettingsFlowDto({
    required String id,
    required String type,
    required DateTime expiresAt,
    required DateTime issuedAt,
    required String requestUrl,
    String? returnTo,
    required UiDto ui,
    String? sessionTokenExchangeCode,
  }) = _SettingsFlowDto;

  factory SettingsFlowDto.fromString(String string) =>
      SettingsFlowDto.fromJson(json.decode(string) as Map<String, dynamic>);

  factory SettingsFlowDto.fromJson(Map<String, dynamic> json) =>
      _$SettingsFlowDtoFromJson(json);

  const SettingsFlowDto._();

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
        ? getPasskeyCreationOptionsFromString(passkeyCreation)
        : null;
  }
}
