import 'dart:convert';
import 'dart:io';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:leancode_kratos_client/leancode_kratos_client.dart';
import 'package:leancode_kratos_client/src/common/api/auth_dtos.dart';
import 'package:leancode_kratos_client/src/common/api/settings_flow_dto.dart';
import 'package:leancode_kratos_client/src/common/api/verification_flow_dto.dart';
import 'package:leancode_kratos_client/src/login/api/login_error.dart'
    as login_error;
import 'package:leancode_kratos_client/src/login/api/login_success.dart';
import 'package:leancode_kratos_client/src/logout/api/logout_flow_dto.dart';
import 'package:leancode_kratos_client/src/recovery/api/recovery_flow_dto.dart';
import 'package:leancode_kratos_client/src/registration/api/registration_success.dart';
import 'package:leancode_kratos_client/src/registration/api/token_exchange_success.dart';
import 'package:leancode_kratos_client/src/utils/create_client.dart'
    if (dart.library.js_interop) 'package:leancode_kratos_client/src/utils/create_browser_client.dart';
import 'package:logging/logging.dart';

typedef BrowserCallback = Future<String> Function(String url);

/// Callback invoked when browser flow starts for OIDC registration via deep links.
/// Receives the URL to open, the flow info, and the cookie needed to complete the flow.
/// Should store the flow info and cookie, then open the browser.
/// The flow will be completed when the deep link callback is received.
typedef BrowserFlowStartCallbackWithFlowInfo =
    Future<void> Function({
      required String url,
      required AuthFlowInfo flowInfo,
      required String cookie,
    });

typedef SdkCallback = Future<SdkResult> Function();

/// Callback invoked when browser flow starts for OIDC linking.
/// Receives the URL to open and the cookie to store for later use.
/// Should open the browser with the URL and store the cookie.
/// The cookie will be needed when handling the callback deep link.
typedef BrowserFlowStartCallback =
    Future<void> Function({required String url, required String cookie});

typedef PasskeyCallback =
    Future<PasskeyCallbackResult> Function(
      Map<String, dynamic> creationOptions,
    );

class KratosClient {
  KratosClient({
    required Uri baseUri,
    CredentialsStorage? credentialsStorage,
    http.Client? httpClient,
  }) : _baseUri = baseUri,
       _credentialsStorage =
           credentialsStorage ?? FlutterSecureCredentialsStorage(),
       _client = httpClient ?? createHttpClient();

  final Uri _baseUri;
  final CredentialsStorage _credentialsStorage;
  final http.Client _client;
  final _logger = Logger('KratosClientLogger');
  static const _commonHeaders = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  };

  String get _flowType => kIsWeb ? 'browser' : 'api';

  Future<AuthFlowDto?> _initRegistrationFlow({
    required bool returnSessionTokenExchangeCode,
    String? returnTo,
  }) {
    return _initAuthFlow(
      path: 'self-service/registration/$_flowType',
      returnSessionTokenExchangeCode: returnSessionTokenExchangeCode,
      returnTo: returnTo,
      refresh: false,
    );
  }

  Future<AuthFlowDto?> _initLoginFlow({
    bool returnSessionTokenExchangeCode = true,
    required String? returnTo,
    required bool refresh,
  }) {
    return _initAuthFlow(
      path: 'self-service/login/$_flowType',
      returnSessionTokenExchangeCode: returnSessionTokenExchangeCode,
      returnTo: returnTo,
      refresh: refresh,
    );
  }

  Future<AuthFlowDto?> _initAuthFlow({
    required String path,
    required bool returnSessionTokenExchangeCode,
    required String? returnTo,
    required bool refresh,
  }) async {
    try {
      final registrationFlow = await _client.get(
        _buildUri(
          path: path,
          queryParameters: {
            if (returnSessionTokenExchangeCode)
              'return_session_token_exchange_code': 'true',
            'return_to': ?returnTo,
            if (refresh) 'refresh': 'true',
          },
        ),
        headers: _commonHeaders,
      );

      return AuthFlowDto.fromString(registrationFlow.body);
    } catch (e, st) {
      _logger.warning('Error initializing auth flow', e, st);
      return null;
    }
  }

  Future<AuthFlowDto?> _getRegistrationFlow(String id) {
    return _getAuthFlow(path: 'self-service/registration/flows', id: id);
  }

  Future<AuthFlowDto?> _getAuthFlow({
    required String path,
    required String id,
  }) async {
    try {
      final registrationFlow = await _client.get(
        _buildUri(path: path, queryParameters: {'id': id}),
      );
      return AuthFlowDto.fromString(registrationFlow.body);
    } catch (e, st) {
      _logger.warning('Error getting auth flow', e, st);
      return null;
    }
  }

  Future<RegistrationResult> registerWithPassword({
    required String password,
    Map<String, dynamic> traits = const <String, dynamic>{},
  }) async {
    final flow = await _initRegistrationFlow(
      returnSessionTokenExchangeCode: false,
    );

    if (flow == null) {
      return const RegistrationUnknownErrorResult();
    }

    try {
      final response = await _client.post(
        _buildUri(
          path: 'self-service/registration',
          queryParameters: {'flow': flow.id},
        ),
        headers: _commonHeaders,
        body: jsonEncode({
          'method': 'password',
          'csrf_token': flow.csrfToken,
          'password': password,
          'traits': traits,
        }),
      );

      if (response.statusCode == 400) {
        return _handleErrorResponse(response);
      } else if (response.statusCode == 200) {
        return _handleSuccessResponse(response);
      }

      return const RegistrationUnknownErrorResult();
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

    /// Optional callback for deep link based browser flow.
    /// If provided, this will be called instead of browserCallback when
    /// a browser redirect is required. Use this for mobile apps that handle
    /// OIDC callbacks via deep links instead of FlutterWebAuth2.
    BrowserFlowStartCallbackWithFlowInfo? onBrowserFlowStart,
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

    if (effectiveFlowInfo == null) {
      return const RegistrationUnknownErrorResult();
    }

    var effectiveIdToken = idToken;
    var effectiveTraits = traits;

    if (effectiveIdToken == null) {
      SdkResult? sdkResult;

      if (!kIsWeb &&
          Platform.isAndroid &&
          provider == OidcProvider.google &&
          googleSdkCallback != null) {
        sdkResult = await googleSdkCallback();
      } else if (!kIsWeb &&
          Platform.isIOS &&
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
      final streamedResponse = await _client.send(
        http.Request(
            'POST',
            _buildUri(
              path: 'self-service/registration',
              queryParameters: {'flow': effectiveFlowInfo.id},
            ),
          )
          ..headers.addAll(_commonHeaders)
          ..body = jsonEncode({
            'method': 'oidc',
            'provider': provider.name,
            'id_token': effectiveIdToken,
            'csrf_token': effectiveFlowInfo.csrfToken,
            'traits': effectiveTraits,
          })
          ..followRedirects = false,
      );

      final response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == 400) {
        return _handleErrorResponse(response);
      } else if (response.statusCode == 200) {
        return _handleSuccessResponse(response);
      } else if (response.statusCode == 422) {
        return await _handleBrowserLocationChangeRequiredResponse(
          response: response,
          info: effectiveFlowInfo,
          browserCallback: browserCallback,
          onBrowserFlowStart: onBrowserFlowStart,
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

  /// [registerWithProfile] is used in a multi step registration flow that requires
  /// users to provide basic information first, and complete the registration process
  /// and set a password or a passkey at the end.
  Future<RegistrationResult> registerWithProfile({
    Map<String, dynamic> traits = const <String, dynamic>{},
  }) async {
    final flow = await _initRegistrationFlow(
      returnSessionTokenExchangeCode: false,
    );

    if (flow == null) {
      return const RegistrationUnknownErrorResult();
    }

    try {
      final response = await _client.post(
        _buildUri(
          path: 'self-service/registration',
          queryParameters: {'flow': flow.id},
        ),
        headers: _commonHeaders,
        body: jsonEncode({
          'method': 'profile',
          'csrf_token': flow.csrfToken,
          'traits': traits,
        }),
      );

      if (response.statusCode == 410 || response.statusCode == 422) {
        return _handleErrorResponse(response);
      } else if (response.statusCode == 200 || response.statusCode == 400) {
        return _handleSuccessResponse(response);
      }

      return const RegistrationUnknownErrorResult();
    } catch (e, st) {
      _logger.severe('Error completing registration flow', e, st);
      return const RegistrationUnknownErrorResult();
    }
  }

  RegistrationResult _handleErrorResponse(http.Response response) {
    final dto = AuthFlowDto.fromString(response.body);
    return mapRegistrationErrorResponse(dto);
  }

  KratosMessage? _handleChangePasswordError(http.Response response) {
    final dto = AuthFlowDto.fromString(response.body);
    final nodes = dto.ui.nodes;
    final errors = nodes
        .map((node) {
          return switch ((node.attributes.name, node.messages)) {
            (
              final attributeName?,
              [MessageDto(:final id, :final context), ...],
            ) =>
              (attributeName, KratosMessage.forId(id, context)),
            _ => null,
          };
        })
        .nonNulls
        .toList();
    return errors.firstOrNull?.$2;
  }

  Future<RegistrationResult> _handleSuccessResponse(
    http.Response response,
  ) async {
    final decodedResponse = RegistrationSuccessResponse.fromString(
      response.body,
    );
    final result = mapRegistrationSuccessResponse(decodedResponse);

    if ((decodedResponse.sessionToken, decodedResponse.session) case (
      final sessionToken?,
      final session?,
    ) when result is RegistrationSuccessResult) {
      await _credentialsStorage.save(
        credentials: sessionToken,
        expirationDate: session.expiresAt.toString(),
      );
    }

    return result;
  }

  Future<RegistrationResult> _handleBrowserLocationChangeRequiredResponse({
    required http.Response response,
    required AuthFlowInfo info,
    required BrowserCallback browserCallback,
    BrowserFlowStartCallbackWithFlowInfo? onBrowserFlowStart,
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

    // If onBrowserFlowStart is provided, use deep link flow
    if (onBrowserFlowStart != null) {
      // Extract the cookie from the response - needed to resume the session
      final cookie = response.headers['set-cookie'];
      if (cookie == null) {
        _logger.warning('No cookie in 422 response for browser flow');
        return const RegistrationUnknownErrorResult();
      }

      await onBrowserFlowStart(
        url: redirectBrowserTo,
        flowInfo: info,
        cookie: cookie,
      );
      // The flow will be completed via deep link callback
      // Return a special result to indicate the flow is pending
      return const RegistrationBrowserFlowStartedResult();
    }

    // Otherwise use the traditional FlutterWebAuth2 flow
    final result = await browserCallback(redirectBrowserTo);

    final returnToCode = Uri.parse(result).queryParameters['code'];
    final initCode = info.sessionTokenExchangeCode;

    if (initCode == null) {
      return const RegistrationUnknownErrorResult();
    }

    if (returnToCode == null) {
      final newFlow = await _getRegistrationFlow(info.id);

      if (newFlow == null) {
        return const RegistrationUnknownErrorResult();
      }

      return mapRegistrationErrorResponse(
        newFlow.copyWith(sessionTokenExchangeCode: initCode),
      );
    }

    return _exchangeSessionToken(initCode, returnToCode);
  }

  Future<RegistrationResult> _handleRedirectResponse({
    required http.Response response,
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

  /// Exchanges session token codes for a session.
  /// Used to complete OIDC registration flow when the returnTo URL is received.
  ///
  /// [initCode] is the session_token_exchange_code from the registration flow.
  /// [returnToCode] is the code parameter from the returnTo URL.
  ///
  /// Returns true if the exchange was successful and session was saved.
  Future<bool> exchangeSessionToken({
    required String initCode,
    required String returnToCode,
  }) async {
    final result = await _exchangeSessionToken(initCode, returnToCode);
    return result is RegistrationSuccessResult;
  }

  Future<RegistrationResult> _exchangeSessionToken(
    String initCode,
    String returnToCode,
  ) async {
    final response = await _client.get(
      _buildUri(
        path: 'sessions/token-exchange',
        queryParameters: {
          'init_code': initCode,
          'return_to_code': returnToCode,
        },
      ),
    );

    if (response.statusCode == 200) {
      final parsedResponse = TokenExchangeSuccess.fromString(response.body);

      await _credentialsStorage.save(
        credentials: parsedResponse.sessionToken,
        expirationDate: parsedResponse.session.expiresAt.toString(),
      );

      return const RegistrationSuccessResult();
    } else {
      return const RegistrationUnknownErrorResult();
    }
  }

  Future<LoginResult> loginWithPassword(
    String email,
    String password, {
    AuthFlowInfo? flowInfo,
    bool refresh = false,
  }) async {
    try {
      final AuthFlowInfo? effectiveFlowInfo;

      if (flowInfo != null) {
        effectiveFlowInfo = flowInfo;
      } else {
        final newFlow = await _initLoginFlow(
          returnSessionTokenExchangeCode: false,
          returnTo: null,
          refresh: refresh,
        );

        effectiveFlowInfo = newFlow?.info;
      }

      if (effectiveFlowInfo == null) {
        return const LoginUnknownErrorResult();
      }

      final loginFlowResult = await _client.post(
        _buildUri(
          path: 'self-service/login',
          queryParameters: {'flow': effectiveFlowInfo.id},
        ),
        headers: _commonHeaders,
        body: jsonEncode({
          'method': 'password',
          'identifier': email,
          'password': password,
          'csrf_token': ?effectiveFlowInfo.csrfToken,
        }),
      );

      if (loginFlowResult.statusCode == 200) {
        final loginResult = loginSuccessResponseFromJson(loginFlowResult.body);
        await _credentialsStorage.save(
          credentials: loginResult.sessionToken,
          expirationDate: loginResult.session.expiresAt.toString(),
        );
        return const LoginSuccessResult();
      } else if (loginFlowResult.statusCode == 400) {
        final errorLoginResult = login_error.loginErrorResponseFromJson(
          loginFlowResult.body,
        );
        final generalErrors = errorLoginResult.ui.getGeneralMessages();

        if (generalErrors.any(
          (error) => error is ErrorValidationAddressNotVerified,
        )) {
          return LoginVerifyEmailResult(
            flowId: effectiveFlowInfo.id,
            emailToVerify: email,
          );
        }

        final fieldErrors = errorLoginResult.ui.getFieldMessages();

        if (generalErrors.isNotEmpty || fieldErrors.isNotEmpty) {
          return LoginErrorResult(
            generalErrors: generalErrors,
            fieldErrors: fieldErrors,
          );
        }

        return const LoginUnknownErrorResult();
      } else if (loginFlowResult.statusCode == 401) {
        final disabledResult = _parseIdentityDisabledError(loginFlowResult);
        if (disabledResult != null) {
          return disabledResult;
        }
        return const LoginUnknownErrorResult();
      }

      return const LoginUnknownErrorResult();
    } catch (e, st) {
      _logger.warning('Login failed.', e, st);

      return const LoginUnknownErrorResult();
    }
  }

  /// Initializes a refresh login flow and extracts the available
  /// authentication methods from the Kratos UI nodes.
  ///
  /// The returned [ReauthorizeFlowSuccess.flowInfo] can be passed to
  /// [loginWithPassword] to reuse the same flow.
  Future<ReauthorizeFlowResult> initReauthorizeFlow() async {
    final flow = await _initLoginFlow(
      returnSessionTokenExchangeCode: false,
      returnTo: null,
      refresh: true,
    );

    if (flow == null) {
      return const ReauthorizeFlowError();
    }

    final groups = flow.ui.nodes.map((n) => n.group).toSet();
    final oidcProviders = flow.ui.nodes
        .where((n) => n.group == 'oidc' && n.attributes.name == 'provider')
        .map((n) => n.attributes.value as String)
        .toSet();

    return ReauthorizeFlowSuccess(
      flowInfo: flow.info,
      availableGroups: groups,
      oidcProviders: oidcProviders,
    );
  }

  /// Logs in with an OIDC provider using an existing login flow.
  ///
  /// Pass [flowInfo] to reuse an existing login flow (e.g. from
  /// [initReauthorizeFlow]) — this avoids an extra HTTP request when native
  /// SDK (Google, Apple) is used. For browser-based providers (Facebook,
  /// Instagram) a new login flow is always initialised internally so that it
  /// includes a session token exchange code.
  Future<LoginResult> loginWithOidc({
    required OidcProvider provider,
    required String returnTo,
    bool refresh = false,
    AuthFlowInfo? flowInfo,
    SdkCallback? appleSdkCallback,
    SdkCallback? googleSdkCallback,
    BrowserFlowStartCallbackWithFlowInfo? onBrowserFlowStart,
    required BrowserCallback browserCallback,
  }) async {
    try {
      String? effectiveIdToken;

      // Try native SDK first (Google on Android, Apple on iOS).
      // When native SDK succeeds we reuse the provided flowInfo to avoid
      // an extra network round-trip.
      if (!kIsWeb &&
          Platform.isAndroid &&
          provider == OidcProvider.google &&
          googleSdkCallback != null) {
        final sdkResult = await googleSdkCallback();
        switch (sdkResult) {
          case SdkCancelledResult():
            return const LoginUnknownErrorResult();
          case SdkErrorResult():
            return const LoginUnknownErrorResult();
          case SdkSuccessResult():
            effectiveIdToken = sdkResult.idToken;
        }
      } else if (!kIsWeb &&
          Platform.isIOS &&
          provider == OidcProvider.apple &&
          appleSdkCallback != null) {
        final sdkResult = await appleSdkCallback();
        switch (sdkResult) {
          case SdkCancelledResult():
            return const LoginUnknownErrorResult();
          case SdkErrorResult():
            return const LoginUnknownErrorResult();
          case SdkSuccessResult():
            effectiveIdToken = sdkResult.idToken;
        }
      }

      // Resolve flow info.  When native SDK provided an idToken we can reuse
      // the caller-supplied flowInfo (no exchange code needed).  For browser
      // providers we always need a fresh flow with exchange code support.
      final AuthFlowInfo? effectiveFlowInfo;
      if (effectiveIdToken != null && flowInfo != null) {
        effectiveFlowInfo = flowInfo;
      } else {
        final newFlow = await _initLoginFlow(
          returnTo: returnTo,
          refresh: refresh,
        );
        effectiveFlowInfo = newFlow?.info;
      }

      if (effectiveFlowInfo == null) {
        return const LoginUnknownErrorResult();
      }

      final streamedResponse = await _client.send(
        http.Request(
            'POST',
            _buildUri(
              path: 'self-service/login',
              queryParameters: {'flow': effectiveFlowInfo.id},
            ),
          )
          ..headers.addAll(_commonHeaders)
          ..body = jsonEncode({
            'method': 'oidc',
            'provider': provider.name,
            'id_token': effectiveIdToken,
            'csrf_token': effectiveFlowInfo.csrfToken,
          })
          ..followRedirects = false,
      );

      final response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == 200) {
        final loginResult = loginSuccessResponseFromJson(response.body);
        await _credentialsStorage.save(
          credentials: loginResult.sessionToken,
          expirationDate: loginResult.session.expiresAt.toString(),
        );
        return const LoginSuccessResult();
      } else if (response.statusCode == 400) {
        final errorResult = login_error.loginErrorResponseFromJson(
          response.body,
        );
        final generalErrors = errorResult.ui.getGeneralMessages();
        final fieldErrors = errorResult.ui.getFieldMessages();

        if (generalErrors.isNotEmpty || fieldErrors.isNotEmpty) {
          return LoginErrorResult(
            generalErrors: generalErrors,
            fieldErrors: fieldErrors,
          );
        }
        return const LoginUnknownErrorResult();
      } else if (response.statusCode == 422) {
        return await _handleLoginOidcBrowserFlowStart(
          response: response,
          flowInfo: effectiveFlowInfo,
          browserCallback: browserCallback,
          onBrowserFlowStart: onBrowserFlowStart,
        );
      }

      return const LoginUnknownErrorResult();
    } catch (e, st) {
      _logger.severe('Error completing OIDC login flow', e, st);
      return const LoginUnknownErrorResult();
    }
  }

  Future<LoginResult> _handleLoginOidcBrowserFlowStart({
    required http.Response response,
    required AuthFlowInfo flowInfo,
    required BrowserCallback browserCallback,
    BrowserFlowStartCallbackWithFlowInfo? onBrowserFlowStart,
  }) async {
    try {
      final body = jsonDecode(response.body) as Map<String, dynamic>;
      final redirectBrowserTo = body['redirect_browser_to'] as String?;

      if (redirectBrowserTo == null) {
        return const LoginUnknownErrorResult();
      }

      if (onBrowserFlowStart != null) {
        final cookie = response.headers['set-cookie'];
        if (cookie == null) {
          _logger.warning('No cookie in 422 response for login browser flow');
          return const LoginUnknownErrorResult();
        }

        await onBrowserFlowStart(
          url: redirectBrowserTo,
          flowInfo: flowInfo,
          cookie: cookie,
        );
        return const LoginBrowserFlowStartedResult();
      }

      // Traditional FlutterWebAuth2 flow
      final result = await browserCallback(redirectBrowserTo);
      final returnToCode = Uri.parse(result).queryParameters['code'];
      final initCode = flowInfo.sessionTokenExchangeCode;

      if (initCode == null) {
        return const LoginUnknownErrorResult();
      }

      if (returnToCode == null) {
        return const LoginUnknownErrorResult();
      }

      final exchangeResult = await _exchangeSessionToken(
        initCode,
        returnToCode,
      );
      return exchangeResult is RegistrationSuccessResult
          ? const LoginSuccessResult()
          : const LoginUnknownErrorResult();
    } catch (e, st) {
      _logger.warning('Error starting OIDC login browser flow', e, st);
      return const LoginUnknownErrorResult();
    }
  }

  /// Completes an OIDC login flow after receiving the OAuth callback deep link.
  ///
  /// Call this from OidcBrowserFlowService once the browser redirects back
  /// to the app via deep link.
  Future<LoginResult> completeOidcLogin({
    required Uri callbackUri,
    required String flowId,
    String? initCode,
    required String cookie,
  }) async {
    try {
      final error = callbackUri.queryParameters['error'];
      if (error != null) {
        return const LoginUnknownErrorResult();
      }

      _logger.fine('Making OIDC login callback request to: $callbackUri');
      final streamedResponse = await _client.send(
        http.Request('GET', callbackUri)
          ..headers.addAll({..._commonHeaders, 'cookie': cookie})
          ..followRedirects = false,
      );

      final callbackResponse = await http.Response.fromStream(streamedResponse);

      _logger.fine(
        'OIDC login callback response: ${callbackResponse.statusCode}',
      );

      // For Kratos API flows, a successful login returns 200 with the session
      // token directly. This is the typical path for login/refresh flows.
      if (callbackResponse.statusCode == 200) {
        try {
          final loginResult = loginSuccessResponseFromJson(
            callbackResponse.body,
          );
          if (loginResult.sessionToken != null) {
            await _credentialsStorage.save(
              credentials: loginResult.sessionToken,
              expirationDate: loginResult.session.expiresAt.toString(),
            );
          }
          return const LoginSuccessResult();
        } catch (_) {}

        // Might be an error response with UI
        try {
          final errorResult = login_error.loginErrorResponseFromJson(
            callbackResponse.body,
          );
          final generalErrors = errorResult.ui.getGeneralMessages();
          final fieldErrors = errorResult.ui.getFieldMessages();
          if (generalErrors.isNotEmpty || fieldErrors.isNotEmpty) {
            return LoginErrorResult(
              generalErrors: generalErrors,
              fieldErrors: fieldErrors,
            );
          }
        } catch (_) {}

        return const LoginUnknownErrorResult();
      }

      if (callbackResponse.statusCode == 303) {
        final location = callbackResponse.headers['location'];
        if (location != null) {
          final returnToCode = Uri.parse(location).queryParameters['code'];
          if (returnToCode != null && initCode != null) {
            final exchangeResult = await _exchangeSessionToken(
              initCode,
              returnToCode,
            );
            return exchangeResult is RegistrationSuccessResult
                ? const LoginSuccessResult()
                : const LoginUnknownErrorResult();
          }
          // 303 without exchange code — session was refreshed server-side.
          return const LoginSuccessResult();
        }
      }

      if (callbackResponse.statusCode == 400) {
        try {
          final errorResult = login_error.loginErrorResponseFromJson(
            callbackResponse.body,
          );
          final generalErrors = errorResult.ui.getGeneralMessages();
          final fieldErrors = errorResult.ui.getFieldMessages();
          if (generalErrors.isNotEmpty || fieldErrors.isNotEmpty) {
            return LoginErrorResult(
              generalErrors: generalErrors,
              fieldErrors: fieldErrors,
            );
          }
        } catch (_) {}
        return const LoginUnknownErrorResult();
      }

      return const LoginUnknownErrorResult();
    } catch (e, st) {
      _logger.warning('Error completing OIDC login', e, st);
      return const LoginUnknownErrorResult();
    }
  }

  Future<PasskeyLoginResult> loginWithPasskey({
    required PasskeyCallback passkeyCallback,
    bool refresh = false,
  }) async {
    try {
      final flow = await _initLoginFlow(
        returnSessionTokenExchangeCode: false,
        returnTo: null,
        refresh: refresh,
      );

      if (flow == null) {
        return const PasskeyLoginUnknownErrorResult();
      }

      final passkeyRequestOptions = flow.info.passkeyRequestOptions;
      if (passkeyRequestOptions == null) {
        return const PasskeyLoginUnknownErrorResult();
      }

      final credentialResult = await passkeyCallback(passkeyRequestOptions);

      String credentialJson;
      switch (credentialResult) {
        case PasskeyCallbackSuccessResult(:final publicKeyJson):
          credentialJson = publicKeyJson;
        case PasskeyCallbackCancelledResult():
          return const PasskeyLoginCancelledResult();
        case PasskeyCallbackErrorResult():
          return const PasskeyLoginPasskeyErrorResult();
      }

      final loginResponse = await _client.post(
        _buildUri(
          path: 'self-service/login',
          queryParameters: {'flow': flow.id},
        ),
        headers: _commonHeaders,
        body: jsonEncode({
          'method': 'passkey',
          'csrf_token': flow.csrfToken,
          'passkey_login': credentialJson,
        }),
      );

      switch (loginResponse.statusCode) {
        case 200:
          final loginResult = loginSuccessResponseFromJson(loginResponse.body);
          await _credentialsStorage.save(
            credentials: loginResult.sessionToken,
            expirationDate: loginResult.session.expiresAt.toString(),
          );
          return const PasskeyLoginSuccessResult();
        case 400:
          final errorLoginResult = login_error.loginErrorResponseFromJson(
            loginResponse.body,
          );
          final generalErrors = errorLoginResult.ui.getGeneralMessages();

          if (generalErrors.any(
            (error) => error is ErrorValidationAddressNotVerified,
          )) {
            return PasskeyLoginVerifyEmailResult(flowId: flow.id);
          }

          if (generalErrors.isNotEmpty) {
            return PasskeyLoginErrorResult(generalErrors: generalErrors);
          }

          return const PasskeyLoginUnknownErrorResult();
        case 401:
          final disabledResult = _parsePasskeyIdentityDisabledError(
            loginResponse,
          );
          if (disabledResult != null) {
            return disabledResult;
          }
          return const PasskeyLoginUnknownErrorResult();
        default:
          return const PasskeyLoginUnknownErrorResult();
      }
    } catch (e, st) {
      _logger.warning('Login with passkey failed.', e, st);

      return const PasskeyLoginUnknownErrorResult();
    }
  }

  Future<void> clearStorage() => _credentialsStorage.clear();

  /// NOTE: logout always clears credential storage. The result is regarding the
  /// server logout notification which is executed on a best effort basis
  Future<LogoutResult> logout() async {
    final sessionToken = await _credentialsStorage.read();
    await clearStorage();

    if (!kIsWeb && sessionToken == null) {
      return const LogoutUnknownErrorResult();
    }

    try {
      if (kIsWeb) {
        return await _logoutWeb();
      } else {
        return await _logoutNative(sessionToken!);
      }
    } catch (e, st) {
      _logger.warning('Logout failed.', e, st);

      return const LogoutUnknownErrorResult();
    }
  }

  Future<LogoutResult> _logoutWeb() async {
    final initLogoutResult = await _client.get(
      _buildUri(path: 'self-service/logout/$_flowType'),
      headers: _commonHeaders,
    );

    if (initLogoutResult.statusCode != 200) {
      return const LogoutUnknownErrorResult();
    }

    final logoutFlowDto = LogoutFlowDto.fromJson(
      jsonDecode(initLogoutResult.body) as Map<String, dynamic>,
    );

    final logoutResult = await _client.get(
      Uri.parse(logoutFlowDto.logoutUrl),
      headers: _commonHeaders,
    );

    return switch (logoutResult.statusCode) {
      204 => const LogoutSuccessResult(),
      _ => const LogoutUnknownErrorResult(),
    };
  }

  Future<LogoutResult> _logoutNative(String token) async {
    final logoutResult = await _client.delete(
      _buildUri(path: 'self-service/logout/$_flowType'),
      headers: _commonHeaders,
      body: jsonEncode({'session_token': token}),
    );

    return switch (logoutResult.statusCode) {
      204 => const LogoutSuccessResult(),
      _ => const LogoutUnknownErrorResult(),
    };
  }

  Future<VerificationResult> verifyAccount({
    required String flowId,
    required String code,
  }) async {
    try {
      final response = await _client.post(
        _buildUri(
          path: 'self-service/verification',
          queryParameters: {'code': code, 'flow': flowId},
        ),
        headers: _commonHeaders,
        body: jsonEncode({'method': 'code'}),
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

  /// getNewVerificationFlow
  /// Use when old verification flow expired / verification flow interrupted on mobile
  Future<VerificationFlowDto?> getNewVerificationFlow(String email) async {
    final verificationFlow = await getVerificationFlow();

    if (verificationFlow == null) {
      return null;
    }

    try {
      final response = await _client.post(
        _buildUri(
          path: 'self-service/verification',
          queryParameters: {'flow': verificationFlow.id},
        ),
        headers: _commonHeaders,
        body: jsonEncode({'email': email, 'method': 'code'}),
      );

      if (response.statusCode != 200) {
        return null;
      }

      final postedVerificationFlow = VerificationFlowDto.fromString(
        response.body,
      );

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
      final response = await _client.get(
        _buildUri(path: 'self-service/verification/$_flowType'),
        headers: _commonHeaders,
      );

      if (response.statusCode != 200) {
        return null;
      }

      return VerificationFlowDto.fromString(response.body);
    } catch (e, st) {
      _logger.warning('Error getting verification flow', e, st);

      return null;
    }
  }

  Future<void> refreshSessionToken() async {
    final sessionToken = await _credentialsStorage.read();
    final expirationTime = await _credentialsStorage.readExpirationDate();
    final hasExpired =
        expirationTime?.isBefore(DateTime.now().toLocal()) ?? true;

    if ((!kIsWeb && sessionToken == null) || hasExpired) {
      return;
    }

    try {
      final refreshResult = await http.get(
        _buildUri(
          path: 'self-service/login/$_flowType',
          queryParameters: {'refresh': 'true'},
        ),
        headers: _buildHeaders({'X-Session-Token': sessionToken}),
      );

      final decodedResult =
          jsonDecode(refreshResult.body) as Map<String, dynamic>;

      switch (decodedResult['expires_at']) {
        case final String newExpirationDate:
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

  Future<RecoveryFlowResult> getRecoveryFlow() async {
    try {
      final recoveryFlowDto = await _getRecoveryFlow();

      return switch (recoveryFlowDto) {
        RecoveryFlowDto(:final id) => RecoveryFlow(id),
        _ => RecoveryFlowError(),
      };
    } catch (e, st) {
      _logger.warning('Error getting recovery flow', e, st);
      return RecoveryFlowError();
    }
  }

  Future<RecoveryFlowDto?> _getRecoveryFlow({
    String? flowId,
    bool addFlowType = true,
  }) async {
    try {
      var path = 'self-service/recovery';
      if (addFlowType) {
        path += '/$_flowType';
      }

      final streamedResponse = await _client.send(
        http.Request(
            'GET',
            _buildUri(path: path, queryParameters: {'flow': ?flowId}),
          )
          ..headers.addAll(_commonHeaders)
          ..followRedirects = false,
      );

      final response = await http.Response.fromStream(streamedResponse);

      return switch (response.statusCode) {
        200 => RecoveryFlowDto.fromJson(
          json.decode(response.body) as Map<String, dynamic>,
        ),
        _ => null,
      };
    } catch (e, st) {
      _logger.warning('Error getting recovery flow', e, st);
      return null;
    }
  }

  Future<bool> sendEmailRecoveryFlow({
    required String flowId,
    required String email,
  }) async {
    final recoveryFlow = await _getRecoveryFlow(flowId: flowId);

    if (recoveryFlow == null) {
      return false;
    }

    final recoveryResponse = await _client.post(
      _buildUri(
        path: 'self-service/recovery',
        queryParameters: {'flow': flowId},
      ),
      headers: _commonHeaders,
      body: jsonEncode({
        'email': email,
        'method': 'code',
        'csrf_token': recoveryFlow.csrfToken,
      }),
    );
    return recoveryResponse.statusCode == 200;
  }

  Future<SettingsFlowResult> sendCodeRecoveryFlow({
    required String flowId,
    required String code,
  }) async {
    final recoveryFlow = await _getRecoveryFlow(flowId: flowId);

    if (recoveryFlow == null) {
      return SettingsFlowResultError();
    }

    final recoveryResponse = await _client.post(
      _buildUri(
        path: 'self-service/recovery',
        queryParameters: {'flow': flowId},
      ),
      body: jsonEncode({
        'code': code,
        'method': 'code',
        'csrf_token': recoveryFlow.csrfToken,
      }),
      headers: _commonHeaders,
    );
    if (recoveryResponse.statusCode == 200) {
      final decodedResult =
          jsonDecode(recoveryResponse.body) as Map<String, dynamic>;
      if (decodedResult case {
        'state': 'passed_challenge',
        'continue_with': final List<dynamic> continueWith,
      }) {
        String? settingsFlowId;
        String? sessionToken;
        for (final cw in continueWith) {
          if (cw case {
            'action': 'set_ory_session_token',
            'ory_session_token': final String value,
          }) {
            sessionToken = value;
          } else if (cw case {
            'action': 'show_settings_ui',
            'flow': {'id': final String value},
          }) {
            settingsFlowId = value;
          }
        }

        if (settingsFlowId == null) {
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

  Future<bool> sendNewPasswordSettingsFlow({
    required SettingsFlowResultData flow,
    required String newPassword,
  }) async {
    final settingsFlow = await _getSettingsFlow(
      flowId: flow.flowId,
      token: flow.sessionToken,
    );

    if (settingsFlow == null) {
      return false;
    }

    final setPasswordResponse = await _client.post(
      _buildUri(
        path: 'self-service/settings',
        queryParameters: {'flow': flow.flowId},
      ),
      body: jsonEncode({
        'method': 'password',
        'password': newPassword,
        'csrf_token': settingsFlow.csrfToken,
      }),
      headers: _buildHeaders({'X-Session-Token': flow.sessionToken}),
    );
    return setPasswordResponse.statusCode == 200;
  }

  Future<AddPasskeyResult> addPasskey({
    required PasskeyCallback passkeyCallback,
  }) async {
    try {
      final kratosToken = await _credentialsStorage.read();
      if (!kIsWeb && kratosToken == null) {
        return const AddPasskeyErrorResult();
      }

      final settingsFlow = await _getSettingsFlow();
      if (settingsFlow == null) {
        return const AddPasskeyErrorResult();
      }

      final passkeyCreationOptions = settingsFlow.passkeyCreationOptions;
      if (passkeyCreationOptions == null) {
        return const AddPasskeyErrorResult();
      }

      final credentialResult = await passkeyCallback(passkeyCreationOptions);

      String credentialJson;
      switch (credentialResult) {
        case PasskeyCallbackSuccessResult(:final publicKeyJson):
          credentialJson = publicKeyJson;
        case PasskeyCallbackCancelledResult():
          return const AddPasskeyCancelledResult();
        case PasskeyCallbackErrorResult():
          return const AddPasskeyErrorResult();
      }

      final passkeyAddResponse = await _client.post(
        _buildUri(
          path: 'self-service/settings',
          queryParameters: {'flow': settingsFlow.id},
        ),
        body: jsonEncode({
          'csrf_token': settingsFlow.csrfToken,
          'method': 'passkey',
          'passkey_settings_register': credentialJson,
        }),
        headers: _buildHeaders({'X-Session-Token': kratosToken}),
      );

      return switch (passkeyAddResponse.statusCode) {
        200 => const AddPasskeySuccessResult(),
        400 => AddPasskeyErrorResult(
          message: _getSettingsFlowError(passkeyAddResponse),
        ),
        403 => const AddPasskeyReauthenticationRequiredResult(),
        _ => const AddPasskeyErrorResult(),
      };
    } catch (e, st) {
      _logger.warning('Error adding a passkey', e, st);
      return const AddPasskeyErrorResult();
    }
  }

  Future<RemovePasskeyResult> removePasskey({required String passkeyId}) async {
    try {
      final kratosToken = await _credentialsStorage.read();
      if (!kIsWeb && kratosToken == null) {
        return const RemovePasskeyErrorResult();
      }

      final settingsFlow = await _getSettingsFlow();

      final removePasskeyResponse = await _client.post(
        _buildUri(
          path: 'self-service/settings',
          queryParameters: {'flow': settingsFlow!.id},
        ),
        body: jsonEncode({
          'csrf_token': settingsFlow.csrfToken,
          'method': 'passkey',
          'passkey_remove': passkeyId,
        }),
        headers: _buildHeaders({'X-Session-Token': kratosToken}),
      );

      return switch (removePasskeyResponse.statusCode) {
        200 => const RemovePasskeySuccessResult(),
        400 => RemovePasskeyErrorResult(
          message: _getSettingsFlowError(removePasskeyResponse),
        ),
        403 => const RemovePasskeyReauthenticationRequiredResult(),
        _ => const RemovePasskeyErrorResult(),
      };
    } catch (e, st) {
      _logger.warning('Error removing a passkey', e, st);
      return const RemovePasskeyErrorResult();
    }
  }

  /// Links an OIDC provider to the current user's account.
  ///
  /// On iOS with Apple provider, uses native Sign in with Apple SDK if
  /// [appleSdkCallback] is provided.
  /// On Android with Google provider, uses native Google Sign-In SDK if
  /// [googleSdkCallback] is provided.
  /// Otherwise, opens a browser flow to authenticate with the provider.
  ///
  /// For browser flow, [onBrowserFlowStart] is called with the URL to open
  /// and the cookie to store. The cookie must be stored and passed to
  /// [completeOidcLink] when the callback deep link is received.
  ///
  /// Returns [LinkOidcBrowserFlowStartedResult] when browser flow is started,
  /// indicating that the caller should wait for the deep link callback.
  Future<LinkOidcResult> linkOidc({
    required OidcProvider provider,
    required BrowserFlowStartCallback onBrowserFlowStart,
    SdkCallback? appleSdkCallback,
    SdkCallback? googleSdkCallback,
  }) async {
    try {
      final kratosToken = await _credentialsStorage.read();
      if (!kIsWeb && kratosToken == null) {
        return const LinkOidcErrorResult();
      }

      final settingsFlow = await _getSettingsFlow();
      if (settingsFlow == null) {
        return const LinkOidcErrorResult();
      }

      // Try native SDK first for supported platforms
      String? idToken;

      if (!kIsWeb &&
          Platform.isAndroid &&
          provider == OidcProvider.google &&
          googleSdkCallback != null) {
        final sdkResult = await googleSdkCallback();
        switch (sdkResult) {
          case SdkCancelledResult():
            return const LinkOidcCancelledResult();
          case SdkErrorResult():
            return const LinkOidcErrorResult();
          case SdkSuccessResult():
            idToken = sdkResult.idToken;
        }
      } else if (!kIsWeb &&
          Platform.isIOS &&
          provider == OidcProvider.apple &&
          appleSdkCallback != null) {
        final sdkResult = await appleSdkCallback();
        switch (sdkResult) {
          case SdkCancelledResult():
            return const LinkOidcCancelledResult();
          case SdkErrorResult():
            return const LinkOidcErrorResult();
          case SdkSuccessResult():
            idToken = sdkResult.idToken;
        }
      }

      final streamedResponse = await _client.send(
        http.Request(
            'POST',
            _buildUri(
              path: 'self-service/settings',
              queryParameters: {'flow': settingsFlow.id},
            ),
          )
          ..headers.addAll(_buildHeaders({'X-Session-Token': kratosToken}))
          ..body = jsonEncode({
            'csrf_token': settingsFlow.csrfToken,
            'method': 'oidc',
            'link': provider.name,
            'id_token': idToken,
          })
          ..followRedirects = false,
      );

      final response = await http.Response.fromStream(streamedResponse);

      return switch (response.statusCode) {
        200 => const LinkOidcSuccessResult(),
        400 => LinkOidcErrorResult(message: _getSettingsFlowError(response)),
        403 => const LinkOidcReauthenticationRequiredResult(),
        422 => await _handleOidcLinkBrowserFlowStart(
          response: response,
          onBrowserFlowStart: onBrowserFlowStart,
        ),
        _ => const LinkOidcErrorResult(),
      };
    } catch (e, st) {
      _logger.warning('Error linking OIDC provider', e, st);
      return const LinkOidcErrorResult();
    }
  }

  Future<LinkOidcResult> _handleOidcLinkBrowserFlowStart({
    required http.Response response,
    required BrowserFlowStartCallback onBrowserFlowStart,
  }) async {
    try {
      final body = jsonDecode(response.body) as Map<String, dynamic>;
      final redirectBrowserTo = body['redirect_browser_to'] as String?;

      if (redirectBrowserTo == null) {
        return const LinkOidcErrorResult();
      }

      // Extract cookie from Set-Cookie header - we need it for the final request
      final setCookieHeader = response.headers['set-cookie'];

      if (setCookieHeader == null) {
        _logger.warning('No Set-Cookie header in OIDC link response');
        return const LinkOidcErrorResult();
      }

      // Call the callback to store the cookie and open the browser
      await onBrowserFlowStart(url: redirectBrowserTo, cookie: setCookieHeader);

      // Return that browser flow has started - caller should wait for deep link
      return const LinkOidcBrowserFlowStartedResult();
    } catch (e, st) {
      _logger.warning('Error starting OIDC link browser flow', e, st);
      return const LinkOidcErrorResult();
    }
  }

  /// Completes the OIDC link flow after receiving the callback deep link.
  ///
  /// This is used when the browser-based OIDC flow redirects back to the app
  /// via a deep link. The [callbackUri] is the full callback URL received,
  /// and [cookie] is the cookie that was stored before opening the browser.
  Future<LinkOidcResult> completeOidcLink({
    required Uri callbackUri,
    required String cookie,
  }) async {
    try {
      // Check for OAuth errors in the callback URL
      final error = callbackUri.queryParameters['error'];
      if (error != null) {
        if (error == 'access_denied') {
          return const LinkOidcCancelledResult();
        }
        return const LinkOidcErrorResult();
      }

      final kratosToken = await _credentialsStorage.read();
      final callbackResponse = await _client.get(
        callbackUri,
        headers: _buildHeaders({
          'X-Session-Token': kratosToken,
          'Cookie': cookie,
        }),
      );

      if (callbackResponse.statusCode == 200) {
        // Parse the settings flow response to check for errors
        final settingsFlow = SettingsFlowDto.fromString(callbackResponse.body);
        final hasOidcError =
            settingsFlow.ui.messages?.any((msg) => msg.type == 'error') ??
            false;

        if (hasOidcError) {
          final errorMessageDto = settingsFlow.ui.messages?.firstWhereOrNull(
            (msg) => msg.type == 'error',
          );
          final errorMessage = errorMessageDto != null
              ? KratosMessage.forId(errorMessageDto.id, errorMessageDto.context)
              : null;
          return LinkOidcErrorResult(message: errorMessage);
        }

        return const LinkOidcSuccessResult();
      }

      return const LinkOidcErrorResult();
    } catch (e, st) {
      _logger.warning('Error completing OIDC link', e, st);
      return const LinkOidcErrorResult();
    }
  }

  /// Completes the OIDC registration flow after receiving the callback deep link.
  ///
  /// This is used when the browser-based OIDC flow redirects back to the app
  /// via a deep link. The [callbackUri] is the full callback URL received,
  /// [flowId] is the registration flow ID, and [initCode] is the session token
  /// exchange code from the flow.
  ///
  /// The method will:
  /// 1. Call the callback URL to let Kratos process the OAuth response
  /// 2. Follow the redirect to get the return_to_code
  /// 3. Exchange the session token using init_code and return_to_code
  Future<RegistrationResult> completeOidcRegistration({
    required Uri callbackUri,
    required String flowId,
    required String initCode,
    required String cookie,
  }) async {
    try {
      // Check for OAuth errors in the callback URL
      final error = callbackUri.queryParameters['error'];
      if (error != null) {
        if (error == 'access_denied') {
          return const RegistrationCancelledResult();
        }
        return const RegistrationUnknownErrorResult();
      }

      // Make a request to the callback URL with the cookie
      // The cookie is required by Kratos to resume the session
      _logger.fine('Making callback request to: $callbackUri');
      final streamedResponse = await _client.send(
        http.Request('GET', callbackUri)
          ..headers.addAll({..._commonHeaders, 'cookie': cookie})
          ..followRedirects = false,
      );

      final callbackResponse = await http.Response.fromStream(streamedResponse);

      _logger.fine(
        'Callback response: ${callbackResponse.statusCode}, '
        'headers: ${callbackResponse.headers}, '
        'body: ${callbackResponse.body.substring(0, callbackResponse.body.length.clamp(0, 500))}',
      );

      // Check for redirect response (303) which contains the returnTo URL
      if (callbackResponse.statusCode == 303) {
        final location = callbackResponse.headers['location'];
        if (location != null) {
          final returnToCode = Uri.parse(location).queryParameters['code'];
          if (returnToCode != null) {
            return _exchangeSessionToken(initCode, returnToCode);
          }
        }
      }

      // If we got a 200 response, try to parse it as a registration flow
      // This might happen if there are validation errors
      if (callbackResponse.statusCode == 200) {
        try {
          final flow = AuthFlowDto.fromString(callbackResponse.body);
          return mapRegistrationErrorResponse(
            flow.copyWith(sessionTokenExchangeCode: initCode),
          );
        } catch (_) {
          // If parsing fails, try to get the flow by ID
          final flow = await _getRegistrationFlow(flowId);
          if (flow != null) {
            return mapRegistrationErrorResponse(
              flow.copyWith(sessionTokenExchangeCode: initCode),
            );
          }
        }
      }

      // If we got a 400 response, parse the error
      if (callbackResponse.statusCode == 400) {
        try {
          final flow = AuthFlowDto.fromString(callbackResponse.body);
          return mapRegistrationErrorResponse(
            flow.copyWith(sessionTokenExchangeCode: initCode),
          );
        } catch (_) {
          return const RegistrationUnknownErrorResult();
        }
      }

      // Fallback: try to get the flow and check for errors
      final flow = await _getRegistrationFlow(flowId);
      if (flow != null) {
        return mapRegistrationErrorResponse(
          flow.copyWith(sessionTokenExchangeCode: initCode),
        );
      }

      return const RegistrationUnknownErrorResult();
    } catch (e, st) {
      _logger.warning('Error completing OIDC registration', e, st);
      return const RegistrationUnknownErrorResult();
    }
  }

  /// Unlinks an OIDC provider from the current user's account.
  Future<UnlinkOidcResult> unlinkOidc({required OidcProvider provider}) async {
    try {
      final kratosToken = await _credentialsStorage.read();
      if (!kIsWeb && kratosToken == null) {
        return const UnlinkOidcErrorResult();
      }

      final settingsFlow = await _getSettingsFlow();
      if (settingsFlow == null) {
        return const UnlinkOidcErrorResult();
      }

      final response = await _client.post(
        _buildUri(
          path: 'self-service/settings',
          queryParameters: {'flow': settingsFlow.id},
        ),
        body: jsonEncode({
          'csrf_token': settingsFlow.csrfToken,
          'method': 'oidc',
          'unlink': provider.name,
        }),
        headers: _buildHeaders({'X-Session-Token': kratosToken}),
      );

      return switch (response.statusCode) {
        200 => const UnlinkOidcSuccessResult(),
        400 => UnlinkOidcErrorResult(message: _getSettingsFlowError(response)),
        403 => const UnlinkOidcReauthenticationRequiredResult(),
        _ => const UnlinkOidcErrorResult(),
      };
    } catch (e, st) {
      _logger.warning('Error unlinking OIDC provider', e, st);
      return const UnlinkOidcErrorResult();
    }
  }

  /// Gets the current OIDC provider status for the user.
  ///
  /// Returns information about which providers are currently linked
  /// and which can be linked.
  Future<GetOidcProvidersResult> getOidcProviders() async {
    try {
      final settingsFlow = await _getSettingsFlow();

      if (settingsFlow == null) {
        return const GetOidcProvidersErrorResult();
      }

      return GetOidcProvidersSuccessResult(
        linkedProviders: settingsFlow.linkedOidcProviders,
        linkableProviders: settingsFlow.linkableOidcProviders,
      );
    } catch (e, st) {
      _logger.warning('Error getting OIDC providers', e, st);
      return const GetOidcProvidersErrorResult();
    }
  }

  KratosMessage? _getSettingsFlowError(http.Response response) {
    final dto = SettingsFlowDto.fromString(response.body);

    final messages = dto.ui.nodes
        .expand((node) => node.messages)
        .map((msg) => KratosMessage.forId(msg.id, msg.context));

    return messages.firstOrNull;
  }

  Future<GetPasskeysResult> getPasskeys() async {
    try {
      final settingsFlow = await _getSettingsFlow();

      if (settingsFlow == null) {
        return const GetPasskeysErrorResult();
      }

      final passkeys = settingsFlow.ui.nodes
          .where((node) => node.attributes.name == 'passkey_remove')
          .map(Passkey.fromUiNode)
          .toList();

      return GetPasskeysSuccessResult(passkeys);
    } catch (e, st) {
      _logger.warning('Error getting passkeys', e, st);
      return const GetPasskeysErrorResult();
    }
  }

  /// Current [flowInfo] is required since new flow will have it's own passkey challenge
  Future<RegistrationResult> registerWithPasskey({
    required String credentialJson,
    required AuthFlowInfo flowInfo,
    Map<String, dynamic> traits = const {},
  }) async {
    try {
      final response = await _client.post(
        _buildUri(
          path: 'self-service/registration',
          queryParameters: {'flow': flowInfo.id},
        ),
        headers: _commonHeaders,
        body: jsonEncode({
          'method': 'passkey',
          'csrf_token': flowInfo.csrfToken,
          'passkey_register': credentialJson,
          'traits': traits,
        }),
      );

      return switch (response.statusCode) {
        200 => await _handleSuccessResponse(response),
        400 => _handleErrorResponse(response),
        _ => const RegistrationUnknownErrorResult(),
      };
    } catch (e, st) {
      _logger.severe('Error completing registration flow', e, st);
      return const RegistrationUnknownErrorResult();
    }
  }

  Future<SettingsFlowDto?> _getSettingsFlow({
    String? flowId,
    String? token,
    bool addFlowType = true,
  }) async {
    try {
      final kratosToken = await _credentialsStorage.read() ?? token;
      if (!kIsWeb && kratosToken == null) {
        return null;
      }

      var path = 'self-service/settings';
      if (addFlowType) {
        path += '/$_flowType';
      }

      final settingsFlow = await _client.get(
        _buildUri(path: path, queryParameters: {'flow': ?flowId}),
        headers: _buildHeaders({'X-Session-Token': kratosToken}),
      );

      return SettingsFlowDto.fromString(settingsFlow.body);
    } catch (e, st) {
      _logger.warning('Error initializing settings flow', e, st);
      return null;
    }
  }

  Future<UpdateProfile> updateTraits({
    required List<ProfileTrait> traits,
  }) async {
    final settingsFlow = await _getSettingsFlow();
    final kratosToken = await _credentialsStorage.read();

    if ((!kIsWeb && kratosToken == null) || settingsFlow == null) {
      return ProfileUpdateFailure();
    }

    final traitsMap = Map<String, dynamic>.fromEntries(
      traits.map(
        (trait) => MapEntry<String, dynamic>(trait.traitName, trait.value),
      ),
    );

    final settingsResponse = await _client.post(
      _buildUri(
        path: 'self-service/settings',
        queryParameters: {'flow': settingsFlow.id},
      ),
      body: jsonEncode({
        'method': 'profile',
        'traits': jsonEncode(traitsMap),
        'csrf_token': settingsFlow.csrfToken,
      }),
      headers: _buildHeaders({'X-Session-Token': kratosToken}),
    );

    return switch (settingsResponse.statusCode) {
      200 => ProfileUpdateSuccess(),
      403 => ProfileUpdateRequiresReauthorization(),
      _ => ProfileUpdateFailure(),
    };
  }

  Future<UpdatePassword> updatePassword({required String password}) async {
    final settingsFlow = await _getSettingsFlow();
    final kratosToken = await _credentialsStorage.read();

    if ((!kIsWeb && kratosToken == null) || settingsFlow == null) {
      return UpdateRequiresReauthorization();
    }

    final settingsResponse = await _client.post(
      _buildUri(
        path: 'self-service/settings',
        queryParameters: {'flow': settingsFlow.id},
      ),
      body: jsonEncode({
        'method': 'password',
        'password': password,
        'csrf_token': settingsFlow.csrfToken,
      }),
      headers: _buildHeaders({'X-Session-Token': kratosToken}),
    );

    return switch (settingsResponse.statusCode) {
      200 => UpdateSuccess(),
      403 => UpdateRequiresReauthorization(),
      400 => UpdateFailure(error: _handleChangePasswordError(settingsResponse)),
      _ => UpdateFailure(error: null),
    };
  }

  Future<String?> getAccessToken() => _credentialsStorage.read();

  Future<DateTime?> getAccessTokenExpirationDate() =>
      _credentialsStorage.readExpirationDate();

  Future<SessionResult> getSession() async {
    final kratosToken = await _credentialsStorage.read();
    if (!kIsWeb && kratosToken == null) {
      return const SessionErrorResult();
    }

    try {
      final whoamiResponse = await _client.get(
        _buildUri(path: 'sessions/whoami'),
        headers: _buildHeaders({'X-Session-Token': kratosToken}),
      );

      if (whoamiResponse.statusCode == 200) {
        return SessionSuccessResult(
          Session.fromJson(
            json.decode(whoamiResponse.body) as Map<String, dynamic>,
          ),
        );
      }

      return const SessionErrorResult();
    } catch (e, st) {
      _logger.warning('Error getting session', e, st);
      return const SessionErrorResult();
    }
  }

  Future<UserProfile> getUserProfile() async {
    final sessionResult = await getSession();
    if (sessionResult is! SessionSuccessResult) {
      return ErrorGettingUserProfile();
    }

    final session = sessionResult.session;

    final userId = session.identity.id;
    final traits = session.identity.traits;
    final metadataPublic = session.identity.metadataPublic;
    final profileTraits = traits.entries
        .map((e) => ProfileTrait(traitName: e.key, value: e.value))
        .toList();
    return UserProfileData(
      traits: profileTraits,
      userId: userId,
      metadataPublic: metadataPublic,
    );
  }

  Future<SessionValidityResult> isSessionValid() async {
    final sessionResult = await getSession();

    return switch (sessionResult) {
      SessionSuccessResult(:final session) => SessionValiditySuccessResult(
        isValid: session.expiresAt.isAfter(DateTime.now()),
        expiresAt: session.expiresAt,
      ),
      _ => const SessionValidityErrorResult(),
    };
  }

  LoginIdentityDisabledResult? _parseIdentityDisabledError(
    http.Response response,
  ) {
    try {
      final body = jsonDecode(response.body) as Map<String, dynamic>;
      if (body case {
        'error': {
          'message': 'identity is disabled',
          'details': {'identity_id': final String identityId},
        },
      }) {
        return LoginIdentityDisabledResult(identityId: identityId);
      }
      if (body case {'error': {'message': 'identity is disabled'}}) {
        return const LoginIdentityDisabledResult();
      }
    } catch (_) {
      // Ignore parsing errors
    }
    return null;
  }

  PasskeyLoginIdentityDisabledResult? _parsePasskeyIdentityDisabledError(
    http.Response response,
  ) {
    try {
      final body = jsonDecode(response.body) as Map<String, dynamic>;
      if (body case {
        'error': {
          'message': 'identity is disabled',
          'details': {'identity_id': final String identityId},
        },
      }) {
        return PasskeyLoginIdentityDisabledResult(identityId: identityId);
      }
      if (body case {'error': {'message': 'identity is disabled'}}) {
        return const PasskeyLoginIdentityDisabledResult();
      }
    } catch (_) {
      // Ignore parsing errors
    }
    return null;
  }

  Uri _buildUri({required String path, Map<String, String>? queryParameters}) =>
      Uri(
        scheme: _baseUri.scheme,
        host: _baseUri.host,
        path: path,
        queryParameters: queryParameters,
      );

  Map<String, String> _buildHeaders(Map<String, String?>? additionalHeaders) {
    if (additionalHeaders == null) {
      return _commonHeaders;
    }
    return {
      ..._commonHeaders,
      for (final header in additionalHeaders.entries)
        if (header.value != null) header.key: header.value!,
    };
  }
}
