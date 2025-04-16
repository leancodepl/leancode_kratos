// https://raw.githubusercontent.com/ory/docs/master/docs/kratos/concepts/messages.json
sealed class KratosMessage {
  const KratosMessage(this.id);

  final int id;

  static KratosMessage forIdWithParameters(
    int id, {
    Map<String, String>? contextParameters,
  }) {
    switch (id) {
      // Login
      case 1010000:
        return const InfoSelfServiceLoginRoot();
      case 1010001:
        return const InfoSelfServiceLogin();
      case 1010002:
        final provider = contextParameters?['provider'] ?? '';
        return InfoSelfServiceLoginWith(provider: provider);
      case 1010003:
        return const InfoSelfServiceLoginReAuth();
      case 1010004:
        return const InfoSelfServiceLoginMFA();
      case 1010005:
        return const InfoSelfServiceLoginVerify();
      case 1010006:
        return const InfoSelfServiceLoginTOTPLabel();
      case 1010007:
        return const InfoLoginLookupLabel();
      case 1010008:
        return const InfoSelfServiceLoginWebAuthn();
      case 1010009:
        return const InfoLoginTOTP();
      case 1010010:
        return const InfoLoginLookup();
      case 1010011:
        return const InfoSelfServiceLoginContinueWebAuthn();
      case 1010012:
        return const InfoSelfServiceLoginWebAuthnPasswordless();
      case 1010013:
        return const InfoSelfServiceLoginContinue();
      case 1010014:
        return const InfoSelfServiceEmailHasBeenSent();
      case 1010015:
        return const InfoSelfServiceSignInWithCode();
      case 1010016:
        final duplicateIdentifier = contextParameters?['duplicateIdentifier'] ??
            contextParameters?['duplicate_identifier'] ??
            '';
        final provider = contextParameters?['provider'] ?? '';
        return InfoSelfServiceSigningInWillLinkYourAccount(
          duplicateIdentifier: duplicateIdentifier,
          provider: provider,
        );
      case 1010017:
        return const InfoSelfServiceSignInAndLink();
      case 1010018:
        final provider = contextParameters?['provider'] ?? '';
        return InfoSelfserviceSignInAndLinkCredential(provider: provider);
      case 1010023:
        final address = contextParameters?['address'] ?? '';
        return InfoSendCodeTo(address: address);

      // Logout
      case 1020000:
        return const InfoSelfServiceLogout();

      // MFA and Registration
      case 1030000:
        return const InfoSelfServiceMFA();
      case 1040000:
        return const InfoSelfServiceRegistrationRoot();
      case 1040001:
        return const InfoSelfServiceRegistration();
      case 1040002:
        final provider = contextParameters?['provider'];
        return InfoSelfServiceRegistrationWith(provider: provider);
      case 1040003:
        return const InfoSelfServiceRegistrationContinue();
      case 1040004:
        return const InfoSelfServiceRegistrationRegisterWebAuthn();
      case 1040005:
        return const InfoSelfServiceRegistrationEmailHasBeenSent();
      case 1040006:
        return const InfoSelfServiceRegistrationRegisterWithCode();

      // Settings
      case 1050000:
        return const InfoSelfServiceSettings();
      case 1050001:
        return const InfoSelfServiceSettingsUpdateSuccess();
      case 1050002:
        final provider = contextParameters?['provider'];
        return InfoSelfServiceSettingsUpdateLinkOidc(provider: provider);
      case 1050003:
        final provider = contextParameters?['provider'];
        return InfoSelfServiceSettingsUpdateUnlinkOidc(provider: provider);
      case 1050004:
        return const InfoSelfServiceSettingsUpdateUnlinkTOTP();
      case 1050005:
        return const InfoSelfServiceSettingsTOTPQRCode();
      case 1050006:
        final secret = contextParameters?['secret'];
        return InfoSelfServiceSettingsTOTPSecret(secret: secret);
      case 1050007:
        return const InfoSelfServiceSettingsRevealLookup();
      case 1050008:
        return const InfoSelfServiceSettingsRegenerateLookup();
      case 1050009:
        final secret = contextParameters?['secret'];
        return InfoSelfServiceSettingsLookupSecret(secret: secret);
      case 1050010:
        return const InfoSelfServiceSettingsLookupSecretLabel();
      case 1050011:
        return const InfoSelfServiceSettingsLookupConfirm();
      case 1050012:
        return const InfoSelfServiceSettingsRegisterWebAuthn();
      case 1050013:
        return const InfoSelfServiceSettingsRegisterWebAuthnDisplayName();
      case 1050014:
        return const InfoSelfServiceSettingsLookupSecretUsed();
      case 1050015:
        return const InfoSelfServiceSettingsLookupSecretList();
      case 1050016:
        return const InfoSelfServiceSettingsDisableLookup();
      case 1050017:
        return const InfoSelfServiceSettingsTOTPSecretLabel();
      case 1050018:
        final displayName = contextParameters?['display_name'];
        return InfoSelfServiceSettingsRemoveWebAuthn(displayName: displayName);
      case 1050020:
        final displayName = contextParameters?['display_name'];
        return InfoSelfServiceSettingsRemovePasskey(displayName: displayName);

      // Recovery
      case 1060000:
        return const InfoSelfServiceRecovery();
      case 1060001:
        return const InfoSelfServiceRecoverySuccessful();
      case 1060002:
        return const InfoSelfServiceRecoveryEmailSent();
      case 1060003:
        return const InfoSelfServiceRecoveryEmailWithCodeSent();

      // Node Labels
      case 1070000:
        return const InfoNodeLabel();
      case 1070001:
        return const InfoNodeLabelInputPassword();
      case 1070002:
        final title = contextParameters?['title'];
        return InfoNodeLabelGenerated(title: title);
      case 1070003:
        return const InfoNodeLabelSave();
      case 1070004:
        return const InfoNodeLabelID();
      case 1070005:
        return const InfoNodeLabelSubmit();
      case 1070006:
        return const InfoNodeLabelVerifyOTP();
      case 1070007:
        return const InfoNodeLabelEmail();
      case 1070008:
        return const InfoNodeLabelResendOTP();
      case 1070009:
        return const InfoNodeLabelContinue();
      case 1070010:
        return const InfoNodeLabelRecoveryCode();
      case 1070011:
        return const InfoNodeLabelVerificationCode();
      case 1070012:
        return const InfoNodeLabelRegistrationCode();
      case 1070013:
        return const InfoNodeLabelLoginCode();
      case 1070014:
        return const InfoNodeLabelLoginAndLinkCredential();

      // Verification
      case 1080000:
        return const InfoSelfServiceVerification();
      case 1080001:
        return const InfoSelfServiceVerificationEmailSent();
      case 1080002:
        return const InfoSelfServiceVerificationSuccessful();
      case 1080003:
        return const InfoSelfServiceVerificationEmailWithCodeSent();

      // Validation Error
      case 4000000:
        return const ErrorValidation();
      case 4000001:
        final reason = contextParameters?['reason'];
        return ErrorValidationGeneric(reason: reason);
      case 4000002:
        final property = contextParameters?['property'];
        return ErrorValidationRequired(property: property);
      case 4000003:
        return const ErrorValidationMinLength();
      case 4000004:
        final pattern = contextParameters?['pattern'];
        return ErrorValidationInvalidFormat(pattern: pattern);
      case 4000005:
        final reason = contextParameters?['reason'];
        return ErrorValidationPasswordPolicyViolation(reason: reason);
      case 4000006:
        return const ErrorValidationInvalidCredentials();
      case 4000007:
        return const ErrorValidationDuplicateCredentials();
      case 4000008:
        return const ErrorValidationTOTPVerifierWrong();
      case 4000009:
        return const ErrorValidationIdentifierMissing();
      case 4000010:
        return const ErrorValidationAddressNotVerified();
      case 4000011:
        return const ErrorValidationNoTOTPDevice();
      case 4000012:
        return const ErrorValidationLookupAlreadyUsed();
      case 4000013:
        return const ErrorValidationNoWebAuthnDevice();
      case 4000014:
        return const ErrorValidationNoLookup();
      case 4000015:
        return const ErrorValidationSuchNoWebAuthnUser();
      case 4000016:
        return const ErrorValidationLookupInvalid();
      case 4000017:
        return const ErrorValidationMaxLength();
      case 4000018:
        return const ErrorValidationMinimum();
      case 4000019:
        return const ErrorValidationExclusiveMinimum();
      case 4000020:
        return const ErrorValidationMaximum();
      case 4000021:
        return const ErrorValidationExclusiveMaximum();
      case 4000022:
        return const ErrorValidationMultipleOf();
      case 4000023:
        return const ErrorValidationMaxItems();
      case 4000024:
        return const ErrorValidationMinItems();
      case 4000025:
        return const ErrorValidationUniqueItems();
      case 4000026:
        final actualType = contextParameters?['actual_type'];
        return ErrorValidationWrongType(actualType: actualType);
      case 4000027:
        return const ErrorValidationDuplicateCredentialsOnOIDCLink();
      case 4000028:
        final credentialIdentifierHint =
            contextParameters?['credential_identifier_hint'];
        return ErrorValidationCredentialAlreadyUsedByAnotherAccount(
          credentialIdentifierHint: credentialIdentifierHint,
        );
      case 4000029:
        final expected = contextParameters?['expected'];
        return ErrorValidationMustBeEqualToConstant(expected: expected);
      case 4000030:
        return const ErrorValidationConstFailed();
      case 4000031:
        return const ErrorValidationPasswordTooSimilarToIdentifier();
      case 4000032:
        return const ErrorValidationPasswordTooShort();
      case 4000033:
        return const ErrorValidationPasswordTooLong();
      case 4000034:
        return const ErrorValidationPasswordFoundInDataBreaches();
      case 4000035:
        return const ErrorValidationNoAccountOrNoCodeSignInSetUp();
      case 4000036:
        return const ErrorValidationTraitsDontMatchPreviouslyAssociated();

      // Login Validation Error
      case 4010000:
        return const ErrorValidationLogin();
      case 4010001:
        return const ErrorValidationLoginFlowExpired();
      case 4010002:
        return const ErrorValidationLoginNoStrategyFound();
      case 4010003:
        return const ErrorValidationRegistrationNoStrategyFound();
      case 4010004:
        return const ErrorValidationSettingsNoStrategyFound();
      case 4010005:
        return const ErrorValidationRecoveryNoStrategyFound();
      case 4010006:
        return const ErrorValidationVerificationNoStrategyFound();
      case 4010007:
        return const ErrorValidationLoginRequestAlreadyCompleted();
      case 4010008:
        return const ErrorValidationLoginCodeInvalidOrAlreadyUsed();
      case 4010009:
        return const ErrorValidationLinkedCredentialsDoNotMatch();

      // Registration Validation Error
      case 4040000:
        return const ErrorValidationRegistration();
      case 4040001:
        return const ErrorValidationRegistrationFlowExpired();
      case 4040002:
        return const ErrorValidationRegistrationRequestAlreadyCompleted();
      case 4040003:
        return const ErrorValidationRegistrationCodeInvalidOrAlreadyUsed();

      // Settings Validation Error
      case 4050000:
        return const ErrorValidationSettings();
      case 4050001:
        return const ErrorValidationSettingsFlowExpired();

      // Recovery Validation Error
      case 4060000:
        return const ErrorValidationRecovery();
      case 4060001:
        return const ErrorValidationRecoveryRetrySuccess();
      case 4060002:
        return const ErrorValidationRecoveryStateFailure();
      case 4060003:
        return const ErrorValidationRecoveryMissingRecoveryToken();
      case 4060004:
        return const ErrorValidationRecoveryTokenInvalidOrAlreadyUsed();
      case 4060005:
        return const ErrorValidationRecoveryFlowExpired();
      case 4060006:
        return const ErrorValidationRecoveryCodeInvalidOrAlreadyUsed();

      // Verification Validation Error
      case 4070000:
        return const ErrorValidationVerification();
      case 4070001:
        return const ErrorValidationVerificationTokenInvalidOrAlreadyUsed();
      case 4070002:
        return const ErrorValidationVerificationRetrySuccess();
      case 4070003:
        return const ErrorValidationVerificationStateFailure();
      case 4070004:
        return const ErrorValidationVerificationMissingVerificationToken();
      case 4070005:
        return const ErrorValidationVerificationFlowExpired();
      case 4070006:
        return const ErrorValidationVerificationCodeInvalidOrAlreadyUsed();

      // System Error
      case 5000000:
        return const ErrorSystem();
      case 5000001:
        return const ErrorSystemGeneric();

      default:
        return const ErrorSystemGeneric();
    }
  }
}

// === Login related messages ===
final class InfoSelfServiceLoginRoot extends KratosMessage {
  const InfoSelfServiceLoginRoot() : super(1010000);
}

final class InfoSelfServiceLogin extends KratosMessage {
  const InfoSelfServiceLogin() : super(1010001);
}

final class InfoSelfServiceLoginWith extends KratosMessage {
  const InfoSelfServiceLoginWith({
    required this.provider,
  }) : super(1010002);

  final String? provider;
}

final class InfoSelfServiceLoginReAuth extends KratosMessage {
  const InfoSelfServiceLoginReAuth() : super(1010003);
}

final class InfoSelfServiceLoginMFA extends KratosMessage {
  const InfoSelfServiceLoginMFA() : super(1010004);
}

final class InfoSelfServiceLoginVerify extends KratosMessage {
  const InfoSelfServiceLoginVerify() : super(1010005);
}

final class InfoSelfServiceLoginTOTPLabel extends KratosMessage {
  const InfoSelfServiceLoginTOTPLabel() : super(1010006);
}

final class InfoLoginLookupLabel extends KratosMessage {
  const InfoLoginLookupLabel() : super(1010007);
}

final class InfoSelfServiceLoginWebAuthn extends KratosMessage {
  const InfoSelfServiceLoginWebAuthn() : super(1010008);
}

final class InfoLoginTOTP extends KratosMessage {
  const InfoLoginTOTP() : super(1010009);
}

final class InfoLoginLookup extends KratosMessage {
  const InfoLoginLookup() : super(1010010);
}

final class InfoSelfServiceLoginContinueWebAuthn extends KratosMessage {
  const InfoSelfServiceLoginContinueWebAuthn() : super(1010011);
}

final class InfoSelfServiceLoginWebAuthnPasswordless extends KratosMessage {
  const InfoSelfServiceLoginWebAuthnPasswordless() : super(1010012);
}

final class InfoSelfServiceLoginContinue extends KratosMessage {
  const InfoSelfServiceLoginContinue() : super(1010013);
}

final class InfoSelfServiceEmailHasBeenSent extends KratosMessage {
  const InfoSelfServiceEmailHasBeenSent() : super(1010014);
}

final class InfoSelfServiceSignInWithCode extends KratosMessage {
  const InfoSelfServiceSignInWithCode() : super(1010015);
}

final class InfoSelfServiceSigningInWillLinkYourAccount extends KratosMessage {
  const InfoSelfServiceSigningInWillLinkYourAccount({
    required this.duplicateIdentifier,
    required this.provider,
  }) : super(1010016);

  final String? duplicateIdentifier;
  final String? provider;
}

final class InfoSelfServiceSignInAndLink extends KratosMessage {
  const InfoSelfServiceSignInAndLink() : super(1010017);
}

final class InfoSelfserviceSignInAndLinkCredential extends KratosMessage {
  const InfoSelfserviceSignInAndLinkCredential({
    required this.provider,
  }) : super(1010018);
  final String? provider;
}

final class InfoSendCodeTo extends KratosMessage {
  const InfoSendCodeTo({
    required this.address,
  }) : super(1010023);

  final String? address;
}

// === Logout related messages ===
final class InfoSelfServiceLogout extends KratosMessage {
  const InfoSelfServiceLogout() : super(1020000);
}

// === MFA and Registration messages ===
final class InfoSelfServiceMFA extends KratosMessage {
  const InfoSelfServiceMFA() : super(1030000);
}

final class InfoSelfServiceRegistrationRoot extends KratosMessage {
  const InfoSelfServiceRegistrationRoot() : super(1040000);
}

final class InfoSelfServiceRegistration extends KratosMessage {
  const InfoSelfServiceRegistration() : super(1040001);
}

final class InfoSelfServiceRegistrationWith extends KratosMessage {
  const InfoSelfServiceRegistrationWith({
    required this.provider,
  }) : super(1040002);

  final String? provider;
}

final class InfoSelfServiceRegistrationContinue extends KratosMessage {
  const InfoSelfServiceRegistrationContinue() : super(1040003);
}

final class InfoSelfServiceRegistrationRegisterWebAuthn extends KratosMessage {
  const InfoSelfServiceRegistrationRegisterWebAuthn() : super(1040004);
}

final class InfoSelfServiceRegistrationEmailHasBeenSent extends KratosMessage {
  const InfoSelfServiceRegistrationEmailHasBeenSent() : super(1040005);
}

final class InfoSelfServiceRegistrationRegisterWithCode extends KratosMessage {
  const InfoSelfServiceRegistrationRegisterWithCode() : super(1040006);
}

// === Settings messages ===
final class InfoSelfServiceSettings extends KratosMessage {
  const InfoSelfServiceSettings() : super(1050000);
}

final class InfoSelfServiceSettingsUpdateSuccess extends KratosMessage {
  const InfoSelfServiceSettingsUpdateSuccess() : super(1050001);
}

final class InfoSelfServiceSettingsUpdateLinkOidc extends KratosMessage {
  const InfoSelfServiceSettingsUpdateLinkOidc({
    required this.provider,
  }) : super(1050002);
  final String? provider;
}

final class InfoSelfServiceSettingsUpdateUnlinkOidc extends KratosMessage {
  const InfoSelfServiceSettingsUpdateUnlinkOidc({
    required this.provider,
  }) : super(1050003);
  final String? provider;
}

final class InfoSelfServiceSettingsUpdateUnlinkTOTP extends KratosMessage {
  const InfoSelfServiceSettingsUpdateUnlinkTOTP() : super(1050004);
}

final class InfoSelfServiceSettingsTOTPQRCode extends KratosMessage {
  const InfoSelfServiceSettingsTOTPQRCode() : super(1050005);
}

final class InfoSelfServiceSettingsTOTPSecret extends KratosMessage {
  const InfoSelfServiceSettingsTOTPSecret({
    required this.secret,
  }) : super(1050006);
  final String? secret;
}

final class InfoSelfServiceSettingsRevealLookup extends KratosMessage {
  const InfoSelfServiceSettingsRevealLookup() : super(1050007);
}

final class InfoSelfServiceSettingsRegenerateLookup extends KratosMessage {
  const InfoSelfServiceSettingsRegenerateLookup() : super(1050008);
}

final class InfoSelfServiceSettingsLookupSecret extends KratosMessage {
  const InfoSelfServiceSettingsLookupSecret({
    required this.secret,
  }) : super(1050009);
  final String? secret;
}

final class InfoSelfServiceSettingsLookupSecretLabel extends KratosMessage {
  const InfoSelfServiceSettingsLookupSecretLabel() : super(1050010);
}

final class InfoSelfServiceSettingsLookupConfirm extends KratosMessage {
  const InfoSelfServiceSettingsLookupConfirm() : super(1050011);
}

final class InfoSelfServiceSettingsRegisterWebAuthn extends KratosMessage {
  const InfoSelfServiceSettingsRegisterWebAuthn() : super(1050012);
}

final class InfoSelfServiceSettingsRegisterWebAuthnDisplayName
    extends KratosMessage {
  const InfoSelfServiceSettingsRegisterWebAuthnDisplayName() : super(1050013);
}

final class InfoSelfServiceSettingsLookupSecretUsed extends KratosMessage {
  const InfoSelfServiceSettingsLookupSecretUsed() : super(1050014);
}

final class InfoSelfServiceSettingsLookupSecretList extends KratosMessage {
  const InfoSelfServiceSettingsLookupSecretList() : super(1050015);
}

final class InfoSelfServiceSettingsDisableLookup extends KratosMessage {
  const InfoSelfServiceSettingsDisableLookup() : super(1050016);
}

final class InfoSelfServiceSettingsTOTPSecretLabel extends KratosMessage {
  const InfoSelfServiceSettingsTOTPSecretLabel() : super(1050017);
}

final class InfoSelfServiceSettingsRemoveWebAuthn extends KratosMessage {
  const InfoSelfServiceSettingsRemoveWebAuthn({
    required this.displayName,
  }) : super(1050018);
  final String? displayName;
}

final class InfoSelfServiceSettingsRemovePasskey extends KratosMessage {
  const InfoSelfServiceSettingsRemovePasskey({
    required this.displayName,
  }) : super(1050020);
  final String? displayName;
}

// === Recovery messages ===
final class InfoSelfServiceRecovery extends KratosMessage {
  const InfoSelfServiceRecovery() : super(1060000);
}

final class InfoSelfServiceRecoverySuccessful extends KratosMessage {
  const InfoSelfServiceRecoverySuccessful() : super(1060001);
}

final class InfoSelfServiceRecoveryEmailSent extends KratosMessage {
  const InfoSelfServiceRecoveryEmailSent() : super(1060002);
}

final class InfoSelfServiceRecoveryEmailWithCodeSent extends KratosMessage {
  const InfoSelfServiceRecoveryEmailWithCodeSent() : super(1060003);
}

// === Node Label messages ===
final class InfoNodeLabel extends KratosMessage {
  const InfoNodeLabel() : super(1070000);
}

final class InfoNodeLabelInputPassword extends KratosMessage {
  const InfoNodeLabelInputPassword() : super(1070001);
}

final class InfoNodeLabelGenerated extends KratosMessage {
  const InfoNodeLabelGenerated({
    required this.title,
  }) : super(1070002);
  final String? title;
}

final class InfoNodeLabelSave extends KratosMessage {
  const InfoNodeLabelSave() : super(1070003);
}

final class InfoNodeLabelID extends KratosMessage {
  const InfoNodeLabelID() : super(1070004);
}

final class InfoNodeLabelSubmit extends KratosMessage {
  const InfoNodeLabelSubmit() : super(1070005);
}

final class InfoNodeLabelVerifyOTP extends KratosMessage {
  const InfoNodeLabelVerifyOTP() : super(1070006);
}

final class InfoNodeLabelEmail extends KratosMessage {
  const InfoNodeLabelEmail() : super(1070007);
}

final class InfoNodeLabelResendOTP extends KratosMessage {
  const InfoNodeLabelResendOTP() : super(1070008);
}

final class InfoNodeLabelContinue extends KratosMessage {
  const InfoNodeLabelContinue() : super(1070009);
}

final class InfoNodeLabelRecoveryCode extends KratosMessage {
  const InfoNodeLabelRecoveryCode() : super(1070010);
}

final class InfoNodeLabelVerificationCode extends KratosMessage {
  const InfoNodeLabelVerificationCode() : super(1070011);
}

final class InfoNodeLabelRegistrationCode extends KratosMessage {
  const InfoNodeLabelRegistrationCode() : super(1070012);
}

final class InfoNodeLabelLoginCode extends KratosMessage {
  const InfoNodeLabelLoginCode() : super(1070013);
}

final class InfoNodeLabelLoginAndLinkCredential extends KratosMessage {
  const InfoNodeLabelLoginAndLinkCredential() : super(1070014);
}

// === Verification messages ===
final class InfoSelfServiceVerification extends KratosMessage {
  const InfoSelfServiceVerification() : super(1080000);
}

final class InfoSelfServiceVerificationEmailSent extends KratosMessage {
  const InfoSelfServiceVerificationEmailSent() : super(1080001);
}

final class InfoSelfServiceVerificationSuccessful extends KratosMessage {
  const InfoSelfServiceVerificationSuccessful() : super(1080002);
}

final class InfoSelfServiceVerificationEmailWithCodeSent extends KratosMessage {
  const InfoSelfServiceVerificationEmailWithCodeSent() : super(1080003);
}

// === Validation Error messages ===
final class ErrorValidation extends KratosMessage {
  const ErrorValidation() : super(4000000);
}

final class ErrorValidationGeneric extends KratosMessage {
  const ErrorValidationGeneric({
    required this.reason,
  }) : super(4000001);
  final String? reason;
}

final class ErrorValidationRequired extends KratosMessage {
  const ErrorValidationRequired({
    required this.property,
  }) : super(4000002);
  final String? property;
}

final class ErrorValidationMinLength extends KratosMessage {
  const ErrorValidationMinLength() : super(4000003);
}

final class ErrorValidationInvalidFormat extends KratosMessage {
  const ErrorValidationInvalidFormat({
    required this.pattern,
  }) : super(4000004);
  final String? pattern;
}

final class ErrorValidationPasswordPolicyViolation extends KratosMessage {
  const ErrorValidationPasswordPolicyViolation({
    required this.reason,
  }) : super(4000005);
  final String? reason;
}

final class ErrorValidationInvalidCredentials extends KratosMessage {
  const ErrorValidationInvalidCredentials() : super(4000006);
}

final class ErrorValidationDuplicateCredentials extends KratosMessage {
  const ErrorValidationDuplicateCredentials() : super(4000007);
}

final class ErrorValidationTOTPVerifierWrong extends KratosMessage {
  const ErrorValidationTOTPVerifierWrong() : super(4000008);
}

final class ErrorValidationIdentifierMissing extends KratosMessage {
  const ErrorValidationIdentifierMissing() : super(4000009);
}

final class ErrorValidationAddressNotVerified extends KratosMessage {
  const ErrorValidationAddressNotVerified() : super(4000010);
}

final class ErrorValidationNoTOTPDevice extends KratosMessage {
  const ErrorValidationNoTOTPDevice() : super(4000011);
}

final class ErrorValidationLookupAlreadyUsed extends KratosMessage {
  const ErrorValidationLookupAlreadyUsed() : super(4000012);
}

final class ErrorValidationNoWebAuthnDevice extends KratosMessage {
  const ErrorValidationNoWebAuthnDevice() : super(4000013);
}

final class ErrorValidationNoLookup extends KratosMessage {
  const ErrorValidationNoLookup() : super(4000014);
}

final class ErrorValidationSuchNoWebAuthnUser extends KratosMessage {
  const ErrorValidationSuchNoWebAuthnUser() : super(4000015);
}

final class ErrorValidationLookupInvalid extends KratosMessage {
  const ErrorValidationLookupInvalid() : super(4000016);
}

final class ErrorValidationMaxLength extends KratosMessage {
  const ErrorValidationMaxLength() : super(4000017);
}

final class ErrorValidationMinimum extends KratosMessage {
  const ErrorValidationMinimum() : super(4000018);
}

final class ErrorValidationExclusiveMinimum extends KratosMessage {
  const ErrorValidationExclusiveMinimum() : super(4000019);
}

final class ErrorValidationMaximum extends KratosMessage {
  const ErrorValidationMaximum() : super(4000020);
}

final class ErrorValidationExclusiveMaximum extends KratosMessage {
  const ErrorValidationExclusiveMaximum() : super(4000021);
}

final class ErrorValidationMultipleOf extends KratosMessage {
  const ErrorValidationMultipleOf() : super(4000022);
}

final class ErrorValidationMaxItems extends KratosMessage {
  const ErrorValidationMaxItems() : super(4000023);
}

final class ErrorValidationMinItems extends KratosMessage {
  const ErrorValidationMinItems() : super(4000024);
}

final class ErrorValidationUniqueItems extends KratosMessage {
  const ErrorValidationUniqueItems() : super(4000025);
}

final class ErrorValidationWrongType extends KratosMessage {
  const ErrorValidationWrongType({
    required this.actualType,
  }) : super(4000026);
  final String? actualType;
}

final class ErrorValidationDuplicateCredentialsOnOIDCLink
    extends KratosMessage {
  const ErrorValidationDuplicateCredentialsOnOIDCLink() : super(4000027);
}

final class ErrorValidationCredentialAlreadyUsedByAnotherAccount
    extends KratosMessage {
  const ErrorValidationCredentialAlreadyUsedByAnotherAccount({
    required this.credentialIdentifierHint,
  }) : super(4000028);
  final String? credentialIdentifierHint;

  static const parameterNames = ['credential_identifier_hint'];
}

final class ErrorValidationMustBeEqualToConstant extends KratosMessage {
  const ErrorValidationMustBeEqualToConstant({
    required this.expected,
  }) : super(4000029);
  final String? expected;
}

final class ErrorValidationConstFailed extends KratosMessage {
  const ErrorValidationConstFailed() : super(4000030);
}

final class ErrorValidationPasswordTooSimilarToIdentifier
    extends KratosMessage {
  const ErrorValidationPasswordTooSimilarToIdentifier() : super(4000031);
}

final class ErrorValidationPasswordTooShort extends KratosMessage {
  const ErrorValidationPasswordTooShort() : super(4000032);
}

final class ErrorValidationPasswordTooLong extends KratosMessage {
  const ErrorValidationPasswordTooLong() : super(4000033);
}

final class ErrorValidationPasswordFoundInDataBreaches extends KratosMessage {
  const ErrorValidationPasswordFoundInDataBreaches() : super(4000034);
}

final class ErrorValidationNoAccountOrNoCodeSignInSetUp extends KratosMessage {
  const ErrorValidationNoAccountOrNoCodeSignInSetUp() : super(4000035);
}

final class ErrorValidationTraitsDontMatchPreviouslyAssociated
    extends KratosMessage {
  const ErrorValidationTraitsDontMatchPreviouslyAssociated() : super(4000036);
}

// === Login Validation Error messages ===
final class ErrorValidationLogin extends KratosMessage {
  const ErrorValidationLogin() : super(4010000);
}

final class ErrorValidationLoginFlowExpired extends KratosMessage {
  const ErrorValidationLoginFlowExpired() : super(4010001);
}

final class ErrorValidationLoginNoStrategyFound extends KratosMessage {
  const ErrorValidationLoginNoStrategyFound() : super(4010002);
}

final class ErrorValidationRegistrationNoStrategyFound extends KratosMessage {
  const ErrorValidationRegistrationNoStrategyFound() : super(4010003);
}

final class ErrorValidationSettingsNoStrategyFound extends KratosMessage {
  const ErrorValidationSettingsNoStrategyFound() : super(4010004);
}

final class ErrorValidationRecoveryNoStrategyFound extends KratosMessage {
  const ErrorValidationRecoveryNoStrategyFound() : super(4010005);
}

final class ErrorValidationVerificationNoStrategyFound extends KratosMessage {
  const ErrorValidationVerificationNoStrategyFound() : super(4010006);
}

final class ErrorValidationLoginRequestAlreadyCompleted extends KratosMessage {
  const ErrorValidationLoginRequestAlreadyCompleted() : super(4010007);
}

final class ErrorValidationLoginCodeInvalidOrAlreadyUsed extends KratosMessage {
  const ErrorValidationLoginCodeInvalidOrAlreadyUsed() : super(4010008);
}

final class ErrorValidationLinkedCredentialsDoNotMatch extends KratosMessage {
  const ErrorValidationLinkedCredentialsDoNotMatch() : super(4010009);
}

// === Registration Validation Error messages ===
final class ErrorValidationRegistration extends KratosMessage {
  const ErrorValidationRegistration() : super(4040000);
}

final class ErrorValidationRegistrationFlowExpired extends KratosMessage {
  const ErrorValidationRegistrationFlowExpired() : super(4040001);
}

final class ErrorValidationRegistrationRequestAlreadyCompleted
    extends KratosMessage {
  const ErrorValidationRegistrationRequestAlreadyCompleted() : super(4040002);
}

final class ErrorValidationRegistrationCodeInvalidOrAlreadyUsed
    extends KratosMessage {
  const ErrorValidationRegistrationCodeInvalidOrAlreadyUsed() : super(4040003);
}

// === Settings Validation Error messages ===
final class ErrorValidationSettings extends KratosMessage {
  const ErrorValidationSettings() : super(4050000);
}

final class ErrorValidationSettingsFlowExpired extends KratosMessage {
  const ErrorValidationSettingsFlowExpired() : super(4050001);
}

// === Recovery Validation Error messages ===
final class ErrorValidationRecovery extends KratosMessage {
  const ErrorValidationRecovery() : super(4060000);
}

final class ErrorValidationRecoveryRetrySuccess extends KratosMessage {
  const ErrorValidationRecoveryRetrySuccess() : super(4060001);
}

final class ErrorValidationRecoveryStateFailure extends KratosMessage {
  const ErrorValidationRecoveryStateFailure() : super(4060002);
}

final class ErrorValidationRecoveryMissingRecoveryToken extends KratosMessage {
  const ErrorValidationRecoveryMissingRecoveryToken() : super(4060003);
}

final class ErrorValidationRecoveryTokenInvalidOrAlreadyUsed
    extends KratosMessage {
  const ErrorValidationRecoveryTokenInvalidOrAlreadyUsed() : super(4060004);
}

final class ErrorValidationRecoveryFlowExpired extends KratosMessage {
  const ErrorValidationRecoveryFlowExpired() : super(4060005);
}

final class ErrorValidationRecoveryCodeInvalidOrAlreadyUsed
    extends KratosMessage {
  const ErrorValidationRecoveryCodeInvalidOrAlreadyUsed() : super(4060006);
}

// === Verification Validation Error messages ===
final class ErrorValidationVerification extends KratosMessage {
  const ErrorValidationVerification() : super(4070000);
}

final class ErrorValidationVerificationTokenInvalidOrAlreadyUsed
    extends KratosMessage {
  const ErrorValidationVerificationTokenInvalidOrAlreadyUsed() : super(4070001);
}

final class ErrorValidationVerificationRetrySuccess extends KratosMessage {
  const ErrorValidationVerificationRetrySuccess() : super(4070002);
}

final class ErrorValidationVerificationStateFailure extends KratosMessage {
  const ErrorValidationVerificationStateFailure() : super(4070003);
}

final class ErrorValidationVerificationMissingVerificationToken
    extends KratosMessage {
  const ErrorValidationVerificationMissingVerificationToken() : super(4070004);
}

final class ErrorValidationVerificationFlowExpired extends KratosMessage {
  const ErrorValidationVerificationFlowExpired() : super(4070005);
}

final class ErrorValidationVerificationCodeInvalidOrAlreadyUsed
    extends KratosMessage {
  const ErrorValidationVerificationCodeInvalidOrAlreadyUsed() : super(4070006);
}

// === System Error messages ===
final class ErrorSystem extends KratosMessage {
  const ErrorSystem() : super(5000000);
}

final class ErrorSystemGeneric extends KratosMessage {
  const ErrorSystemGeneric() : super(5000001);
}
