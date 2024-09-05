import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:leancode_kratos_client/leancode_kratos_client.dart';
import 'package:leancode_kratos_client/src/common/api/verification_flow_dto.dart';
import 'package:leancode_kratos_client/src/login/api/login_api.dart';
import 'package:leancode_kratos_client/src/login/api/login_success.dart';
import 'package:leancode_kratos_client/src/login/domain/login_repository.dart';
import 'package:leancode_kratos_client/src/logout/api/logout_api.dart';
import 'package:leancode_kratos_client/src/logout/domain/logout_repository.dart';
import 'package:leancode_kratos_client/src/profile/api/profile_api.dart';
import 'package:leancode_kratos_client/src/profile/domain/profile_repository.dart';
import 'package:leancode_kratos_client/src/registration/api/registration_api.dart';
import 'package:leancode_kratos_client/src/registration/domain/registration_repository.dart';
import 'package:leancode_kratos_client/src/verification/api/verification_api.dart';
import 'package:leancode_kratos_client/src/verification/domain/verification_repository.dart';
import 'package:logging/logging.dart';

typedef BrowserCallback = Future<String> Function(String url);
typedef SdkCallback = Future<SdkResult> Function();

class KratosClient {
  KratosClient({
    required Uri baseUri,
    CredentialsStorage? credentialsStorage,
    http.Client? httpClient,
  })  : _baseUri = baseUri,
        _credentialsStorage =
            credentialsStorage ?? const FlutterSecureCredentialsStorage(),
        _client = httpClient ?? http.Client() {
    _loginRepository = LoginRepository(
      api: LoginApi(baseUri, _client),
      credentialsStorage: _credentialsStorage,
    );
    _logoutRepository = LogoutRepository(
      api: LogoutApi(baseUri, _client),
      credentialsStorage: _credentialsStorage,
    );
    _profileRepository = ProfileRepository(
      api: ProfileApi(baseUri, _client),
      credentialsStorage: _credentialsStorage,
    );
    _registrationRepository = RegistrationRepository(
      api: RegistrationApi(baseUri, _client),
      credentialsStorage: _credentialsStorage,
    );
    _verificationRepository = VerificationRepository(
      api: VerificationApi(baseUri, _client),
    );
  }

  final Uri _baseUri;
  final CredentialsStorage _credentialsStorage;
  final http.Client _client;
  final Logger _logger = Logger('KratosClientLogger');
  static const _commonHeaders = {
    'Accept': 'application/json',
    'Content-Type': 'application/json',
  };

  late final LoginRepository _loginRepository;
  late final LogoutRepository _logoutRepository;
  late final ProfileRepository _profileRepository;
  late final RegistrationRepository _registrationRepository;
  late final VerificationRepository _verificationRepository;

  Future<RegistrationResult> registerWithPassword({
    required String password,
    Map<String, dynamic> traits = const <String, dynamic>{},
  }) =>
      _registrationRepository.registerWithPassword(password: password);

  Future<RegistrationResult> registerWithOidc({
    required OidcProvider provider,
    required String returnTo,
    required BrowserCallback browserCallback,
    SdkCallback? appleSdkCallback,
    SdkCallback? googleSdkCallback,
    Map<String, dynamic> traits = const <String, dynamic>{},
    AuthFlowInfo? flowInfo,
    String? idToken,
  }) =>
      _registrationRepository.registerWithOidc(
        provider: provider,
        returnTo: returnTo,
        browserCallback: browserCallback,
        appleSdkCallback: appleSdkCallback,
        googleSdkCallback: googleSdkCallback,
        traits: traits,
        flowInfo: flowInfo,
        idToken: idToken,
      );

  Future<RegistrationResult> registerWithProfile({
    Map<String, dynamic> traits = const <String, dynamic>{},
  }) =>
      _registrationRepository.registerWithProfile(traits: traits);

  Future<LoginResult> loginWithPassword(
    String email,
    String password, {
    AuthFlowInfo? flowInfo,
    bool refresh = false,
  }) =>
      _loginRepository.loginWithPassword(
        password: password,
        email: email,
        flowInfo: flowInfo,
        refresh: refresh,
      );

  /// NOTE: logout always clears credential storage. The result is regarding the
  /// server logout notification which is executed on a best effort basis

  Future<LogoutResult> logout() => _logoutRepository.logout();

  Future<VerificationResult> verifyAccount({
    required String flowId,
    required String code,
  }) =>
      _verificationRepository.verifyAccount(
        flowId: flowId,
        code: code,
      );

  /// getNewVerificationFlow
  /// Use when old verification flow expired / verification flow interrupted on mobile
  ///

  Future<VerificationFlowDto?> getNewVerificationFlow(String email) =>
      _verificationRepository.getNewVerificationFlow(email);

  Future<VerificationFlowDto?> getVerificationFlow() =>
      _verificationRepository.getVerificationFlow();

  Future<void> refreshSessionToken() async {
    final sessionToken = await _credentialsStorage.read();
    final expirationTime = await _credentialsStorage.readExpirationDate();
    final hasExpired =
        expirationTime?.isBefore(DateTime.now().toLocal()) ?? true;

    if (sessionToken == null || hasExpired) {
      return;
    }

    try {
      final refreshResult = await http.get(
        _buildUri(
          path: 'self-service/login/api',
          queryParameters: {
            'refresh': 'true',
          },
        ),
        headers: {
          'X-Session-Token': sessionToken,
        },
      );

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

  Future<RecoveryFlowResult> getRecoveryFlow() async {
    final recoveryFlow = await _client.get(
      _buildUri(path: 'self-service/recovery/api'),
    );
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
    final recoveryFlow = await _client.post(
      _buildUri(
        path: 'self-service/recovery',
        queryParameters: {'flow': flowId},
      ),
      headers: _commonHeaders,
      body: jsonEncode({'email': email, 'method': 'code'}),
    );
    return recoveryFlow.statusCode == 200;
  }

  Future<SettingsFlowResult> sendCodeRecoveryFlow({
    required String flowId,
    required String code,
  }) async {
    final recoveryFlow = await _client.post(
      _buildUri(
        path: 'self-service/recovery',
        queryParameters: {'flow': flowId},
      ),
      body: jsonEncode({'code': code, 'method': 'code'}),
      headers: _commonHeaders,
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

  Future<bool> sendNewPasswordSettingsFlow({
    required SettingsFlowResultData flow,
    required String newPassword,
  }) async {
    final settingsFlow = await _client.post(
      _buildUri(
        path: 'self-service/settings',
        queryParameters: {'flow': flow.flowId},
      ),
      body: jsonEncode({
        'method': 'password',
        'password': newPassword,
      }),
      headers: _buildHeaders({'X-Session-Token': flow.sessionToken}),
    );
    return settingsFlow.statusCode == 200;
  }

  Future<UpdateProfile> updateTraits({
    required List<ProfileTrait> traits,
  }) =>
      _profileRepository.updateTraits(traits: traits);

  Future<UpdatePassword> updatePassword({
    required String password,
  }) =>
      _profileRepository.updatePassword(password: password);

  Future<UserProfile> getUserProfile() async {
    final kratosToken = await _credentialsStorage.read();

    if (kratosToken == null) {
      return ErrorGettingUserProfile();
    }

    final whoamiResponse = await _client.get(
      _buildUri(path: 'sessions/whoami'),
      headers: _buildHeaders({'X-Session-Token': kratosToken}),
    );

    if (whoamiResponse.statusCode == 200) {
      try {
        final session = Session.fromJson(
          json.decode(whoamiResponse.body) as Map<String, dynamic>,
        );
        final userId = session.identity.id;
        final traits = session.identity.traits;
        final profileTraits = traits?.entries
            .map(
              (e) => ProfileTrait(
                traitName: e.key,
                value: e.value,
              ),
            )
            .toList();
        return UserProfileData(
          traits: profileTraits!,
          userId: userId!,
        );
      } catch (e, st) {
        _logger.warning('Error getting recovery flow', e, st);
      }
    }
    return ErrorGettingUserProfile();
  }

  Uri _buildUri({
    required String path,
    Map<String, String>? queryParameters,
  }) =>
      Uri(
        scheme: _baseUri.scheme,
        host: _baseUri.host,
        path: path,
        queryParameters: queryParameters,
      );

  Map<String, String> _buildHeaders(Map<String, String>? additionalHeaders) {
    if (additionalHeaders == null) {
      return _commonHeaders;
    }
    return {..._commonHeaders, ...additionalHeaders};
  }
}
