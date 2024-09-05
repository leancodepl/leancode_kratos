import 'dart:io';

import 'package:http/http.dart';
import 'package:leancode_kratos_client/leancode_kratos_client.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';
import 'package:leancode_kratos_client/src/common/api/data_state.dart';
import 'package:leancode_kratos_client/src/registration/api/registration_api.dart';
import 'package:leancode_kratos_client/src/registration/api/registration_success.dart';
import 'package:leancode_kratos_client/src/registration/api/token_exchange_success.dart';
import 'package:logging/logging.dart';

class RegistrationRepository {
  RegistrationRepository({
    required RegistrationApi api,
    required CredentialsStorage credentialsStorage,
  })  : _api = api,
        _credentialsStorage = credentialsStorage;

  final RegistrationApi _api;
  final CredentialsStorage _credentialsStorage;
  final Logger _logger = Logger('KratosClientLogger');

  Future<RegistrationResult> registerWithPassword({
    required String password,
    Map<String, dynamic> traits = const <String, dynamic>{},
  }) async {
    final flow =
        await _initRegistrationFlow(returnSessionTokenExchangeCode: false);

    if (flow == null) {
      return const RegistrationUnknownErrorResult();
    }
    try {
      final response = await _api.registerWithPassword(
        password: password,
        traits: traits,
        flowId: flow.id,
        csrfToken: flow.csrfToken,
      );

      return switch (response) {
        final DataSuccess<Response> response when response.data != null =>
          _handleSuccessResponse(response.data!),
        final DataFailed<Response> response when response.data != null =>
          _handleErrorResponse(response.data!),
        _ => const RegistrationUnknownErrorResult(),
      } as RegistrationResult;
    } catch (e, st) {
      _logger.severe('Error completing registration flow', e, st);
      return const RegistrationUnknownErrorResult();
    }
  }

  Future<RegistrationResult> registerWithOidc({
    required OidcProvider provider,
    required String returnTo,
    required BrowserCallback browserCallback,
    SdkCallback? appleSdkCallback,
    SdkCallback? googleSdkCallback,
    Map<String, dynamic> traits = const <String, dynamic>{},
    AuthFlowInfo? flowInfo,
    String? idToken,
  }) async {
    final effectiveFlowInfo = await _getEffectiveInfo(
      flowInfo: flowInfo,
      refresh: true,
      returnTo: returnTo,
    );

    if (effectiveFlowInfo == null) {
      return const RegistrationUnknownErrorResult();
    }

    var effectiveIdToken = idToken;
    var effectiveTraits = traits;

    if (effectiveIdToken == null) {
      SdkResult? sdkResult;

      if (Platform.isAndroid &&
          provider == OidcProvider.google &&
          googleSdkCallback != null) {
        sdkResult = await googleSdkCallback();
      } else if (Platform.isIOS &&
          provider == OidcProvider.apple &&
          appleSdkCallback != null) {
        sdkResult = await appleSdkCallback();
      }

      if (sdkResult != null) {
        switch (sdkResult) {
          case SdkCancelledResult():
            return const RegistrationCancelledResult();
          case SdkErrorResult():
            return const RegistrationUnknownErrorResult();
          case SdkSuccessResult():
        }

        effectiveIdToken = sdkResult.idToken;
        effectiveTraits = <String, dynamic>{
          ...effectiveTraits,
          ...sdkResult.traits,
        };
      }
    }

    try {
      final response = await _api.registerWithOidc(
        traits: effectiveTraits,
        flowId: effectiveFlowInfo.id,
        csrfToken: effectiveFlowInfo.csrfToken,
        provider: provider,
        effectiveIdToken: effectiveIdToken,
      );

      if (response.statusCode == 400) {
        return _handleErrorResponse(response);
      } else if (response.statusCode == 200) {
        return _handleSuccessResponse(response);
      } else if (response.statusCode == 422) {
        return await _handleBrowserLocationChangeRequiredResponse(
          response: response,
          info: effectiveFlowInfo,
          browserCallback: browserCallback,
        );
      } else if (response.statusCode == 303) {
        return await _handleRedirectResponse(
          response: response,
          info: effectiveFlowInfo,
          idToken: effectiveIdToken,
          traits: effectiveTraits,
        );
      }

      return const RegistrationUnknownErrorResult();
    } catch (e, st) {
      _logger.severe('Error completing registration flow', e, st);
      return const RegistrationUnknownErrorResult();
    }
  }

  Future<AuthFlowDto?> _initRegistrationFlow({
    required bool returnSessionTokenExchangeCode,
    String? returnTo,
  }) async {
    try {
      final result = await _api.initRegistrationFlow(
        returnSessionTokenExchangeCode: returnSessionTokenExchangeCode,
        returnTo: returnTo,
      );
      return result.data;
    } catch (e, st) {
      _logger.warning('Registration flow initialization failed.', e, st);
      return null;
    }
  }

  Future<RegistrationResult> _handleErrorResponse(Response response) async {
    final dto = AuthFlowDto.fromString(response.body);
    return mapRegistrationErrorResponse(dto);
  }

  Future<RegistrationResult> _handleSuccessResponse(
    Response response,
  ) async {
    final decodedResponse =
        RegistrationSuccessResponse.fromString(response.body);
    final result = mapRegistrationSuccessResponse(decodedResponse);

    if ((decodedResponse.sessionToken, decodedResponse.session)
        case (final sessionToken?, final session?)
        when result is RegistrationSuccessResult) {
      await _credentialsStorage.save(
        credentials: sessionToken,
        expirationDate: session.expiresAt.toString(),
      );
    }

    return result;
  }

  Future<AuthFlowInfo?> _getEffectiveInfo({
    required AuthFlowInfo? flowInfo,
    required bool refresh,
    required String? returnTo,
  }) async {
    final AuthFlowInfo? effectiveFlowInfo;

    if (flowInfo != null) {
      effectiveFlowInfo = flowInfo;
    } else {
      final newFlow = await _initRegistrationFlow(
        returnSessionTokenExchangeCode: true,
        returnTo: returnTo,
      );
      effectiveFlowInfo = newFlow?.info;
    }
    return effectiveFlowInfo;
  }

  Future<RegistrationResult> _handleRedirectResponse({
    required Response response,
    required AuthFlowInfo info,
    required String? idToken,
    required Map<String, dynamic> traits,
  }) async {
    final location = response.headers['location'];

    if (location == null) {
      return const RegistrationUnknownErrorResult();
    }

    final returnToCode = Uri.parse(location).queryParameters['code'];
    final initCode = info.sessionTokenExchangeCode;

    if (initCode != null && returnToCode != null) {
      return _exchangeSessionToken(initCode, returnToCode);
    }

    if (initCode != null && idToken != null) {
      return RegistrationSocialFinishResult(
        flowInfo: info,
        idToken: idToken,
        values: traits.entries
            .map((entry) => ('traits.${entry.key}', entry.value))
            .toList(),
      );
    }

    return const RegistrationUnknownErrorResult();
  }

  Future<RegistrationResult> _exchangeSessionToken(
    String initCode,
    String returnToCode,
  ) async {
    final response = await _api.exchangeToken(
      initCode: initCode,
      returnToCode: returnToCode,
    );

    if (response.data case final Response data when response is DataSuccess) {
      final parsedResponse = TokenExchangeSuccess.fromString(data.body);
      await _credentialsStorage.save(
        credentials: parsedResponse.sessionToken!,
        expirationDate: parsedResponse.session.expiresAt.toString(),
      );

      return const RegistrationSuccessResult();
    }
    return const RegistrationUnknownErrorResult();
  }

  Future<RegistrationResult> _handleBrowserLocationChangeRequiredResponse({
    required Response response,
    required AuthFlowInfo info,
    required BrowserCallback browserCallback,
  }) async {
    final browserLocationChangeRequiredResponse =
        RegistrationBrowserLocationChangeRequiredResponse.fromString(
      response.body,
    );

    final redirectBrowserTo =
        browserLocationChangeRequiredResponse.redirectBrowserTo;

    if (redirectBrowserTo == null) {
      return const RegistrationUnknownErrorResult();
    }

    final result = await browserCallback(redirectBrowserTo);

    final returnToCode = Uri.parse(result).queryParameters['code'];
    final initCode = info.sessionTokenExchangeCode;

    if (initCode == null) {
      return const RegistrationUnknownErrorResult();
    }

    if (returnToCode == null) {
      final response = await _api.getRegistrationFlow(id: info.id);

      if (response.data case final AuthFlowDto authFlow) {
        return mapRegistrationErrorResponse(
          authFlow.copyWith(sessionTokenExchangeCode: initCode),
        );
      } else {
        return const RegistrationUnknownErrorResult();
      }
    }

    return _exchangeSessionToken(initCode, returnToCode);
  }
}
