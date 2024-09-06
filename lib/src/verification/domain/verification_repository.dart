import 'package:leancode_kratos_client/leancode_kratos_client.dart';
import 'package:leancode_kratos_client/src/common/api/verification_flow_dto.dart';
import 'package:leancode_kratos_client/src/verification/api/verification_api.dart';
import 'package:logging/logging.dart';

class VerificationRepository {
  VerificationRepository({
    required VerificationApi api,
  }) : _api = api;

  final VerificationApi _api;
  final Logger _logger = Logger('KratosClientLogger');

  Future<VerificationResult> verifyAccount({
    required String flowId,
    required String code,
  }) async {
    try {
      final response = await _api.verifyAccount(
        flowId: flowId,
        code: code,
      );

      if (response.statusCode == 200) {
        final resultFlow = VerificationFlowDto.fromString(response.body);

        if (resultFlow.state != 'passed_challenge') {
          return const VerificationUnknownErrorResult();
        }

        return const VerificationSuccessResult();
      } else if (response.statusCode == 400) {
        final resultFlow = VerificationFlowDto.fromString(response.body);

        return VerificationErrorResult(
          generalErrors: resultFlow.ui.getGeneralMessages(),
          fieldErrors: resultFlow.ui.getFieldMessages(),
        );
      } else if (response.statusCode == 403) {
        return const VerificationFlowExpiredResult();
      }

      return const VerificationUnknownErrorResult();
    } catch (e, st) {
      _logger.warning('Error completing verification', e, st);

      return const VerificationUnknownErrorResult();
    }
  }

  Future<VerificationFlowDto?> getNewVerificationFlow(String email) async {
    final verificationFlow = await getVerificationFlow();

    if (verificationFlow == null) {
      return null;
    }

    try {
      final response = await _api.getNewVerificationFlow(
        flowId: verificationFlow.id,
        email: email,
      );

      if (response.statusCode != 200) {
        return null;
      }

      final postedVerificationFlow =
          VerificationFlowDto.fromString(response.body);

      if (postedVerificationFlow.state != 'sent_email') {
        return null;
      }

      return postedVerificationFlow;
    } catch (e, st) {
      _logger.warning('Error getting verification flow', e, st);

      return null;
    }
  }

  Future<VerificationFlowDto?> getVerificationFlow() async {
    try {
      final response = await _api.getVerificationFlow();

      if (response.statusCode != 200) {
        return null;
      }

      return VerificationFlowDto.fromString(response.body);
    } catch (e, st) {
      _logger.warning('Error getting verification flow', e, st);

      return null;
    }
  }
}
