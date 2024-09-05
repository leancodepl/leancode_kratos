import 'dart:convert';

import 'package:leancode_kratos_client/leancode_kratos_client.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';
import 'package:leancode_kratos_client/src/login/api/login_api.dart';
import 'package:leancode_kratos_client/src/login/api/login_error.dart';
import 'package:leancode_kratos_client/src/login/api/login_success.dart';
import 'package:logging/logging.dart';

class LoginRepository {
  LoginRepository({
    required LoginApi api,
    required CredentialsStorage credentialsStorage,
  })  : _api = api,
        _credentialsStorage = credentialsStorage;

  final LoginApi _api;
  final CredentialsStorage _credentialsStorage;
  final Logger _logger = Logger('KratosClientLogger');

  Future<LoginResult> loginWithPassword({
    required String password,
    required String email,
    required AuthFlowInfo? flowInfo,
    required bool refresh,
  }) async {
    try {
      final effectiveFlowInfo =
          await _getEffectiveFlowInfo(flowInfo: flowInfo, refresh: refresh);

      if (effectiveFlowInfo == null) {
        return const LoginUnknownErrorResult();
      }

      final result = await _api.loginWithPassword(
        password: password,
        flowId: effectiveFlowInfo.id,
        email: email,
      );
      if (result.data case final LoginSuccessResponse successResult) {
        return _handleLoginSuccessResultResponse(successResult);
      } else if (result.data case final LoginErrorResponse errorResult) {
        return _handleLoginErrorResultResponse(
          errorResult: errorResult,
          effectiveFlowInfo: effectiveFlowInfo,
          email: email,
        );
      } else {
        return const LoginUnknownErrorResult();
      }
    } catch (e, st) {
      _logger.warning('Login failed.', e, st);
      return const LoginUnknownErrorResult();
    }
  }

  Future<AuthFlowInfo?> _getEffectiveFlowInfo({
    required AuthFlowInfo? flowInfo,
    required bool refresh,
  }) async {
    final AuthFlowInfo? effectiveFlowInfo;
    if (flowInfo case final flowInfo?) {
      effectiveFlowInfo = flowInfo;
    } else {
      final newFlow = await _initLoginFlow(
        returnSessionTokenExchangeCode: false,
        returnTo: null,
        refresh: refresh,
      );

      effectiveFlowInfo = newFlow?.info;
    }

    return effectiveFlowInfo;
  }

  Future<AuthFlowDto?> _initLoginFlow({
    bool returnSessionTokenExchangeCode = true,
    required String? returnTo,
    required bool refresh,
  }) async {
    try {
      final response =
          await _api.initLoginFlow(returnTo: returnTo, refresh: refresh);
      if (response.data case final AuthFlowDto authFlowDto) {
        return authFlowDto;
      }
    } catch (e, st) {
      _logger.warning('Error initializing auth flow', e, st);
    }
    return null;
  }

  Future<LoginSuccessResult> _handleLoginSuccessResultResponse(
    LoginSuccessResponse successResult,
  ) async {
    await _credentialsStorage.save(
      credentials: successResult.sessionToken,
      expirationDate: successResult.session.expiresAt.toString(),
    );
    return const LoginSuccessResult();
  }

  Future<LoginResult> _handleLoginErrorResultResponse({
    required LoginErrorResponse errorResult,
    required AuthFlowInfo effectiveFlowInfo,
    required String email,
  }) async {
    final generalErrors = errorResult.ui.getGeneralMessages();

    if (generalErrors
        .contains(KratosMessage.errorValidationAddressNotVerified)) {
      return LoginVerifyEmailResult(
        flowId: effectiveFlowInfo.id,
        emailToVerify: email,
      );
    }

    final fieldErrors = errorResult.ui.getFieldMessages();

    if (generalErrors.isNotEmpty || fieldErrors.isNotEmpty) {
      return LoginErrorResult(
        generalErrors: generalErrors,
        fieldErrors: fieldErrors,
      );
    }

    return const LoginUnknownErrorResult();
  }

  Future<void> refreshSessionToken() async {
    final sessionToken = await _credentialsStorage.read();
    final expirationTime = await _credentialsStorage.readExpirationDate();
    final hasExpired =
        expirationTime?.isBefore(DateTime.now().toLocal()) ?? true;

    if (sessionToken == null || hasExpired) {
      return;
    }

    try {
      final refreshResult =
          await _api.refreshSessionToken(sessionToken: sessionToken);

      final decodedResult = jsonDecode(
        refreshResult.body,
      ) as Map<String, dynamic>;

      final dynamic newExpirationDate = decodedResult['expires_at'];
      switch (newExpirationDate) {
        case String _:
          await _credentialsStorage.save(
            credentials: sessionToken,
            expirationDate: newExpirationDate,
          );
        default:
          throw Exception('Flow id is invalid or empty.');
      }
    } catch (e, st) {
      _logger.warning('Could not refresh session token.', e, st);
    }
  }
}
