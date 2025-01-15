import 'package:http/http.dart' as http;
import 'package:leancode_kratos_client/leancode_kratos_client.dart';
import 'package:leancode_kratos_client/src/common/api/verification_flow_dto.dart';
import 'package:leancode_kratos_client/src/login/api/login_api.dart';
import 'package:leancode_kratos_client/src/login/domain/login_repository.dart';
import 'package:leancode_kratos_client/src/logout/api/logout_api.dart';
import 'package:leancode_kratos_client/src/logout/domain/logout_repository.dart';
import 'package:leancode_kratos_client/src/profile/api/profile_api.dart';
import 'package:leancode_kratos_client/src/profile/domain/profile_repository.dart';
import 'package:leancode_kratos_client/src/recovery/api/recovery_api.dart';
import 'package:leancode_kratos_client/src/recovery/domain/recovery_repository.dart';
import 'package:leancode_kratos_client/src/registration/api/registration_api.dart';
import 'package:leancode_kratos_client/src/registration/domain/registration_repository.dart';
import 'package:leancode_kratos_client/src/verification/api/verification_api.dart';
import 'package:leancode_kratos_client/src/verification/domain/verification_repository.dart';

typedef BrowserCallback = Future<String> Function(String url);
typedef SdkCallback = Future<SdkResult> Function();

class KratosClient {
  KratosClient({
    required Uri baseUri,
    CredentialsStorage? credentialsStorage,
    http.Client? httpClient,
  })  : _credentialsStorage =
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
    _recoveryRepository = RecoveryRepository(
      api: RecoveryApi(baseUri, _client),
    );
  }

  final CredentialsStorage _credentialsStorage;
  final http.Client _client;

  late final LoginRepository _loginRepository;
  late final LogoutRepository _logoutRepository;
  late final ProfileRepository _profileRepository;
  late final RegistrationRepository _registrationRepository;
  late final VerificationRepository _verificationRepository;
  late final RecoveryRepository _recoveryRepository;

  Future<RegistrationResult> registerWithPassword({
    required String password,
    Map<String, dynamic> traits = const <String, dynamic>{},
  }) =>
      _registrationRepository.registerWithPassword(
        password: password,
        traits: traits,
      );

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

  Future<void> refreshSessionToken() => _loginRepository.refreshSessionToken();

  Future<RecoveryFlowResult> getRecoveryFlow() =>
      _recoveryRepository.getRecoveryFlow();

  Future<bool> sendEmailRecoveryFlow({
    required String flowId,
    required String email,
  }) =>
      _recoveryRepository.sendEmailRecoveryFlow(
        flowId: flowId,
        email: email,
      );

  Future<SettingsFlowResult> sendCodeRecoveryFlow({
    required String flowId,
    required String code,
  }) =>
      _recoveryRepository.sendCodeRecoveryFlow(
        flowId: flowId,
        code: code,
      );

  Future<bool> sendNewPasswordSettingsFlow({
    required SettingsFlowResultData flow,
    required String newPassword,
  }) =>
      sendNewPasswordSettingsFlow(
        flow: flow,
        newPassword: newPassword,
      );

  Future<UpdateProfile> updateTraits({required List<ProfileTrait> traits}) =>
      _profileRepository.updateTraits(traits: traits);

  Future<UpdatePassword> updatePassword({required String password}) =>
      _profileRepository.updatePassword(password: password);

  Future<UserProfile> getUserProfile() => _profileRepository.getUserProfile();
}
