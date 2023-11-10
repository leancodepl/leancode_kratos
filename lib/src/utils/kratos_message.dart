import 'package:collection/collection.dart';

// https://raw.githubusercontent.com/ory/docs/master/docs/kratos/concepts/messages.json
enum KratosMessage {
  // Login
  infoSelfServiceLoginRoot(1010000),
  infoSelfServiceLogin(1010001),
  infoSelfServiceLoginWith(1010002),
  infoSelfServiceLoginReAuth(1010003),
  infoSelfServiceLoginMFA(1010004),
  infoSelfServiceLoginVerify(1010005),
  infoSelfServiceLoginTOTPLabel(1010006),
  infoLoginLookupLabel(1010007),
  infoSelfServiceLoginWebAuthn(1010008),
  infoLoginTOTP(1010009),
  infoLoginLookup(1010010),
  infoSelfServiceLoginContinueWebAuthn(1010011),
  infoSelfServiceLoginWebAuthnPasswordless(1010012),
  infoSelfServiceLoginContinue(1010013),
  infoSelfServiceEmailHasBeenSent(1010014),
  infoSelfServiceSignInWithCode(1010015),
  infoSelfServiceSigningInWillLinkYourAccount(1010016),
  infoSelfServiceSignInAndLink(1010017),
  infoSelfserviceSignInAndLinkCredential(1010018),

  // Logout
  infoSelfServiceLogout(1020000),

  // MFA
  infoSelfServiceMFA(1030000),
  infoSelfServiceRegistrationRoot(1040000),
  infoSelfServiceRegistration(1040001),
  infoSelfServiceRegistrationWith(1040002),
  infoSelfServiceRegistrationContinue(1040003),
  infoSelfServiceRegistrationRegisterWebAuthn(1040004),
  infoSelfServiceRegistrationEmailHasBeenSent(1040005),
  infoSelfServiceRegistrationRegisterWithCode(1040006),
  infoSelfServiceSettings(1050000),
  infoSelfServiceSettingsUpdateSuccess(1050001),
  infoSelfServiceSettingsUpdateLinkOidc(1050002),
  infoSelfServiceSettingsUpdateUnlinkOidc(1050003),
  infoSelfServiceSettingsUpdateUnlinkTOTP(1050004),
  infoSelfServiceSettingsTOTPQRCode(1050005),
  infoSelfServiceSettingsTOTPSecret(1050006),
  infoSelfServiceSettingsRevealLookup(1050007),
  infoSelfServiceSettingsRegenerateLookup(1050008),
  infoSelfServiceSettingsLookupSecret(1050009),
  infoSelfServiceSettingsLookupSecretLabel(1050010),
  infoSelfServiceSettingsLookupConfirm(1050011),
  infoSelfServiceSettingsRegisterWebAuthn(1050012),
  infoSelfServiceSettingsRegisterWebAuthnDisplayName(1050013),
  infoSelfServiceSettingsLookupSecretUsed(1050014),
  infoSelfServiceSettingsLookupSecretList(1050015),
  infoSelfServiceSettingsDisableLookup(1050016),
  infoSelfServiceSettingsTOTPSecretLabel(1050017),
  infoSelfServiceSettingsRemoveWebAuthn(1050018),

  // Recovery
  infoSelfServiceRecovery(1060000),
  infoSelfServiceRecoverySuccessful(1060001),
  infoSelfServiceRecoveryEmailSent(1060002),
  infoSelfServiceRecoveryEmailWithCodeSent(1060003),

  // Node Label
  infoNodeLabel(1070000),
  infoNodeLabelInputPassword(1070001),
  infoNodeLabelGenerated(1070002),
  infoNodeLabelSave(1070003),
  infoNodeLabelID(1070004),
  infoNodeLabelSubmit(1070005),
  infoNodeLabelVerifyOTP(1070006),
  infoNodeLabelEmail(1070007),
  infoNodeLabelResendOTP(1070008),
  infoNodeLabelContinue(1070009),
  infoNodeLabelRecoveryCode(1070010),
  infoNodeLabelVerificationCode(1070011),
  infoNodeLabelRegistrationCode(1070012),
  infoNodeLabelLoginCode(1070013),
  infoNodeLabelLoginAndLinkCredential(1070014),

  // Verification
  infoSelfServiceVerification(1080000),
  infoSelfServiceVerificationEmailSent(1080001),
  infoSelfServiceVerificationSuccessful(1080002),
  infoSelfServiceVerificationEmailWithCodeSent(1080003),

  // Validation Error
  errorValidation(4000000),
  errorValidationGeneric(4000001),
  errorValidationRequired(4000002),
  errorValidationMinLength(4000003),
  errorValidationInvalidFormat(4000004),
  errorValidationPasswordPolicyViolation(4000005),
  errorValidationInvalidCredentials(4000006),
  errorValidationDuplicateCredentials(4000007),
  errorValidationTOTPVerifierWrong(4000008),
  errorValidationIdentifierMissing(4000009),
  errorValidationAddressNotVerified(4000010),
  errorValidationNoTOTPDevice(4000011),
  errorValidationLookupAlreadyUsed(4000012),
  errorValidationNoWebAuthnDevice(4000013),
  errorValidationNoLookup(4000014),
  errorValidationSuchNoWebAuthnUser(4000015),
  errorValidationLookupInvalid(4000016),
  errorValidationMaxLength(4000017),
  errorValidationMinimum(4000018),
  errorValidationExclusiveMinimum(4000019),
  errorValidationMaximum(4000020),
  errorValidationExclusiveMaximum(4000021),
  errorValidationMultipleOf(4000022),
  errorValidationMaxItems(4000023),
  errorValidationMinItems(4000024),
  errorValidationUniqueItems(4000025),
  errorValidationWrongType(4000026),
  errorValidationDuplicateCredentialsOnOIDCLink(4000027),
  errorValidationCredentialAlreadyUsedByAnotherAccount(4000028),
  errorValidationMustBeEqualToConstant(4000029),
  errorValidationConstFailed(4000030),
  errorValidationPasswordTooSimilarToIdentifier(4000031),
  errorValidationPasswordTooShort(4000032),
  errorValidationPasswordTooLong(4000033),
  errorValidationPasswordFoundInDataBreaches(4000034),
  errorValidationNoAccountOrNoCodeSignInSetUp(4000035),
  errorValidationTraitsDontMatchPreviouslyAssociated(4000036),

  // Login Validation Error
  errorValidationLogin(4010000),
  errorValidationLoginFlowExpired(4010001),
  errorValidationLoginNoStrategyFound(4010002),
  errorValidationRegistrationNoStrategyFound(4010003),
  errorValidationSettingsNoStrategyFound(4010004),
  errorValidationRecoveryNoStrategyFound(4010005),
  errorValidationVerificationNoStrategyFound(4010006),
  errorValidationLoginRequestAlreadyCompleted(4010007),
  errorValidationLoginCodeInvalidOrAlreadyUsed(4010008),
  errorValidationLinkedCredentialsDoNotMatch(4010009),

  // Registration Validation Error
  errorValidationRegistration(4040000),
  errorValidationRegistrationFlowExpired(4040001),
  errorValidationRegistrationRequestAlreadyCompleted(4040002),
  errorValidationRegistrationCodeInvalidOrAlreadyUsed(4040003),

  // Settings Validation Error
  errorValidationSettings(4050000),
  errorValidationSettingsFlowExpired(4050001),

  // Recovery Validation Error
  errorValidationRecovery(4060000),
  errorValidationRecoveryRetrySuccess(4060001),
  errorValidationRecoveryStateFailure(4060002),
  errorValidationRecoveryMissingRecoveryToken(4060003),
  errorValidationRecoveryTokenInvalidOrAlreadyUsed(4060004),
  errorValidationRecoveryFlowExpired(4060005),
  errorValidationRecoveryCodeInvalidOrAlreadyUsed(4060006),

  // Verification Validation Error
  errorValidationVerification(4070000),
  errorValidationVerificationTokenInvalidOrAlreadyUsed(4070001),
  errorValidationVerificationRetrySuccess(4070002),
  errorValidationVerificationStateFailure(4070003),
  errorValidationVerificationMissingVerificationToken(4070004),
  errorValidationVerificationFlowExpired(4070005),
  errorValidationVerificationCodeInvalidOrAlreadyUsed(4070006),

  // System Error
  errorSystem(5000000),
  errorSystemGeneric(5000001);

  const KratosMessage(this.id);

  final int id;

  static KratosMessage forId(int id) {
    return KratosMessage.values.firstWhereOrNull((error) => error.id == id) ??
        KratosMessage.errorSystemGeneric;
  }
}
