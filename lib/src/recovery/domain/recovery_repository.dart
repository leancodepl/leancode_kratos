import 'dart:convert';

import 'package:leancode_kratos_client/leancode_kratos_client.dart';
import 'package:leancode_kratos_client/src/recovery/api/recovery_api.dart';
import 'package:logging/logging.dart';

class RecoveryRepository {
  RecoveryRepository({
    required RecoveryApi api,
  }) : _api = api;

  final RecoveryApi _api;
  final Logger _logger = Logger('KratosClientLogger');

  Future<RecoveryFlowResult> getRecoveryFlow() async {
    final recoveryFlow = await _api.getRecoveryFlow();
    try {
      final decodedResult =
          jsonDecode(recoveryFlow.body) as Map<String, dynamic>;
      final dynamic recoveryFlowId = decodedResult['id'];
      switch (recoveryFlowId) {
        case String _:
          return RecoveryFlow(recoveryFlowId);
        default:
          return RecoveryFlowError();
      }
    } catch (e, st) {
      _logger.warning('Error getting recovery flow', e, st);
      return RecoveryFlowError();
    }
  }

  Future<bool> sendEmailRecoveryFlow({
    required String flowId,
    required String email,
  }) async {
    final recoveryFlow = await _api.sendEmailRecoveryFlow(
      flowId: flowId,
      email: email,
    );
    return recoveryFlow.statusCode == 200;
  }

  Future<SettingsFlowResult> sendCodeRecoveryFlow({
    required String flowId,
    required String code,
  }) async {
    final recoveryFlow = await _api.sendCodeRecoveryFlow(
      flowId: flowId,
      code: code,
    );
    if (recoveryFlow.statusCode == 200) {
      final decodedResult =
          jsonDecode(recoveryFlow.body) as Map<String, dynamic>;
      if (decodedResult
          case {
            'state': 'passed_challenge',
            'continue_with': final List<dynamic> continueWith
          }) {
        String? settingsFlowId;
        String? sessionToken;
        for (final cw in continueWith) {
          if (cw
              case {
                'action': 'set_ory_session_token',
                'ory_session_token': final String value
              }) {
            sessionToken = value;
          } else if (cw
              case {
                'action': 'show_settings_ui',
                'flow': {'id': final String value}
              }) {
            settingsFlowId = value;
          }
        }

        if (settingsFlowId == null || sessionToken == null) {
          return SettingsFlowResultError();
        } else {
          return SettingsFlowResultData(
            flowId: settingsFlowId,
            sessionToken: sessionToken,
          );
        }
      } else {
        return SettingsFlowResultError();
      }
    }
    return SettingsFlowResultError();
  }
}
