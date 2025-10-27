// https://raw.githubusercontent.com/ory/docs/master/docs/kratos/concepts/messages.json

typedef ContextParameters = Map<String, dynamic>;

sealed class KratosMessage {
  const KratosMessage();

  factory KratosMessage.forId(int id, ContextParameters? context) {
    return switch (id) {
      // Login
      InfoSelfServiceLoginRoot.id => const InfoSelfServiceLoginRoot(),
      InfoSelfServiceLogin.id => const InfoSelfServiceLogin(),
      InfoSelfServiceLoginWith.id => InfoSelfServiceLoginWith.fromContext(
        context!,
      ),
      InfoSelfServiceLoginReAuth.id => const InfoSelfServiceLoginReAuth(),
      InfoSelfServiceLoginMFA.id => const InfoSelfServiceLoginMFA(),
      InfoSelfServiceLoginVerify.id => const InfoSelfServiceLoginVerify(),
      InfoSelfServiceLoginTOTPLabel.id => const InfoSelfServiceLoginTOTPLabel(),
      InfoLoginLookupLabel.id => const InfoLoginLookupLabel(),
      InfoSelfServiceLoginWebAuthn.id => const InfoSelfServiceLoginWebAuthn(),
      InfoLoginTOTP.id => const InfoLoginTOTP(),
      InfoLoginLookup.id => const InfoLoginLookup(),
      InfoSelfServiceLoginContinueWebAuthn.id =>
        const InfoSelfServiceLoginContinueWebAuthn(),
      InfoSelfServiceLoginWebAuthnPasswordless.id =>
        const InfoSelfServiceLoginWebAuthnPasswordless(),
      InfoSelfServiceLoginContinue.id => const InfoSelfServiceLoginContinue(),
      InfoSelfServiceEmailHasBeenSent.id =>
        const InfoSelfServiceEmailHasBeenSent(),
      InfoSelfServiceSignInWithCode.id => const InfoSelfServiceSignInWithCode(),
      InfoSelfServiceSigningInWillLinkYourAccount.id =>
        InfoSelfServiceSigningInWillLinkYourAccount.fromContext(context!),
      InfoSelfServiceSignInAndLink.id => const InfoSelfServiceSignInAndLink(),
      InfoSelfserviceSignInAndLinkCredential.id =>
        InfoSelfserviceSignInAndLinkCredential.fromContext(context!),
      InfoSendCodeTo.id => InfoSendCodeTo.fromContext(context!),

      // Logout
      InfoSelfServiceLogout.id => const InfoSelfServiceLogout(),

      // MFA and Registration
      InfoSelfServiceMFA.id => const InfoSelfServiceMFA(),
      InfoSelfServiceRegistrationRoot.id =>
        const InfoSelfServiceRegistrationRoot(),
      InfoSelfServiceRegistration.id => const InfoSelfServiceRegistration(),
      InfoSelfServiceRegistrationWith.id =>
        InfoSelfServiceRegistrationWith.fromContext(context!),
      InfoSelfServiceRegistrationContinue.id =>
        const InfoSelfServiceRegistrationContinue(),
      InfoSelfServiceRegistrationRegisterWebAuthn.id =>
        const InfoSelfServiceRegistrationRegisterWebAuthn(),
      InfoSelfServiceRegistrationEmailHasBeenSent.id =>
        const InfoSelfServiceRegistrationEmailHasBeenSent(),
      InfoSelfServiceRegistrationRegisterWithCode.id =>
        const InfoSelfServiceRegistrationRegisterWithCode(),

      // Settings
      InfoSelfServiceSettings.id => const InfoSelfServiceSettings(),
      InfoSelfServiceSettingsUpdateSuccess.id =>
        const InfoSelfServiceSettingsUpdateSuccess(),
      InfoSelfServiceSettingsUpdateLinkOidc.id =>
        InfoSelfServiceSettingsUpdateLinkOidc.fromContext(context!),
      InfoSelfServiceSettingsUpdateUnlinkOidc.id =>
        InfoSelfServiceSettingsUpdateUnlinkOidc.fromContext(context!),
      InfoSelfServiceSettingsUpdateUnlinkTOTP.id =>
        const InfoSelfServiceSettingsUpdateUnlinkTOTP(),
      InfoSelfServiceSettingsTOTPQRCode.id =>
        const InfoSelfServiceSettingsTOTPQRCode(),
      InfoSelfServiceSettingsTOTPSecret.id =>
        InfoSelfServiceSettingsTOTPSecret.fromContext(context!),
      InfoSelfServiceSettingsRevealLookup.id =>
        const InfoSelfServiceSettingsRevealLookup(),
      InfoSelfServiceSettingsRegenerateLookup.id =>
        const InfoSelfServiceSettingsRegenerateLookup(),
      InfoSelfServiceSettingsLookupSecret.id =>
        InfoSelfServiceSettingsLookupSecret.fromContext(context!),
      InfoSelfServiceSettingsLookupSecretLabel.id =>
        const InfoSelfServiceSettingsLookupSecretLabel(),
      InfoSelfServiceSettingsLookupConfirm.id =>
        const InfoSelfServiceSettingsLookupConfirm(),
      InfoSelfServiceSettingsRegisterWebAuthn.id =>
        const InfoSelfServiceSettingsRegisterWebAuthn(),
      InfoSelfServiceSettingsRegisterWebAuthnDisplayName.id =>
        const InfoSelfServiceSettingsRegisterWebAuthnDisplayName(),
      InfoSelfServiceSettingsLookupSecretUsed.id =>
        InfoSelfServiceSettingsLookupSecretUsed.fromContext(context!),
      InfoSelfServiceSettingsLookupSecretList.id =>
        InfoSelfServiceSettingsLookupSecretList.fromContext(context!),
      InfoSelfServiceSettingsDisableLookup.id =>
        const InfoSelfServiceSettingsDisableLookup(),
      InfoSelfServiceSettingsTOTPSecretLabel.id =>
        const InfoSelfServiceSettingsTOTPSecretLabel(),
      InfoSelfServiceSettingsRemoveWebAuthn.id =>
        InfoSelfServiceSettingsRemoveWebAuthn.fromContext(context!),
      InfoSelfServiceSettingsRemovePasskey.id =>
        InfoSelfServiceSettingsRemovePasskey.fromContext(context!),

      // Recovery
      InfoSelfServiceRecovery.id => const InfoSelfServiceRecovery(),
      InfoSelfServiceRecoverySuccessful.id =>
        const InfoSelfServiceRecoverySuccessful(),
      InfoSelfServiceRecoveryEmailSent.id =>
        const InfoSelfServiceRecoveryEmailSent(),
      InfoSelfServiceRecoveryEmailWithCodeSent.id =>
        const InfoSelfServiceRecoveryEmailWithCodeSent(),

      // Node Labels
      InfoNodeLabel.id => const InfoNodeLabel(),
      InfoNodeLabelInputPassword.id => const InfoNodeLabelInputPassword(),
      InfoNodeLabelGenerated.id => InfoNodeLabelGenerated.fromContext(context!),
      InfoNodeLabelSave.id => const InfoNodeLabelSave(),
      InfoNodeLabelID.id => const InfoNodeLabelID(),
      InfoNodeLabelSubmit.id => const InfoNodeLabelSubmit(),
      InfoNodeLabelVerifyOTP.id => const InfoNodeLabelVerifyOTP(),
      InfoNodeLabelEmail.id => const InfoNodeLabelEmail(),
      InfoNodeLabelResendOTP.id => const InfoNodeLabelResendOTP(),
      InfoNodeLabelContinue.id => const InfoNodeLabelContinue(),
      InfoNodeLabelRecoveryCode.id => const InfoNodeLabelRecoveryCode(),
      InfoNodeLabelVerificationCode.id => const InfoNodeLabelVerificationCode(),
      InfoNodeLabelRegistrationCode.id => const InfoNodeLabelRegistrationCode(),
      InfoNodeLabelLoginCode.id => const InfoNodeLabelLoginCode(),
      InfoNodeLabelLoginAndLinkCredential.id =>
        const InfoNodeLabelLoginAndLinkCredential(),

      // Verification
      InfoSelfServiceVerification.id => const InfoSelfServiceVerification(),
      InfoSelfServiceVerificationEmailSent.id =>
        const InfoSelfServiceVerificationEmailSent(),
      InfoSelfServiceVerificationSuccessful.id =>
        const InfoSelfServiceVerificationSuccessful(),
      InfoSelfServiceVerificationEmailWithCodeSent.id =>
        const InfoSelfServiceVerificationEmailWithCodeSent(),

      // Validation Error
      ErrorValidation.id => const ErrorValidation(),
      ErrorValidationGeneric.id => ErrorValidationGeneric.fromContext(context!),
      ErrorValidationRequired.id => ErrorValidationRequired.fromContext(
        context!,
      ),
      ErrorValidationMinLength.id => ErrorValidationMinLength.fromContext(
        context!,
      ),
      ErrorValidationInvalidFormat.id =>
        ErrorValidationInvalidFormat.fromContext(context!),
      ErrorValidationPasswordPolicyViolation.id =>
        ErrorValidationPasswordPolicyViolation.fromContext(context!),
      ErrorValidationInvalidCredentials.id =>
        const ErrorValidationInvalidCredentials(),
      ErrorValidationDuplicateCredentials.id =>
        const ErrorValidationDuplicateCredentials(),
      ErrorValidationTOTPVerifierWrong.id =>
        const ErrorValidationTOTPVerifierWrong(),
      ErrorValidationIdentifierMissing.id =>
        const ErrorValidationIdentifierMissing(),
      ErrorValidationAddressNotVerified.id =>
        const ErrorValidationAddressNotVerified(),
      ErrorValidationNoTOTPDevice.id => const ErrorValidationNoTOTPDevice(),
      ErrorValidationLookupAlreadyUsed.id =>
        const ErrorValidationLookupAlreadyUsed(),
      ErrorValidationNoWebAuthnDevice.id =>
        const ErrorValidationNoWebAuthnDevice(),
      ErrorValidationNoLookup.id => const ErrorValidationNoLookup(),
      ErrorValidationSuchNoWebAuthnUser.id =>
        const ErrorValidationSuchNoWebAuthnUser(),
      ErrorValidationLookupInvalid.id => const ErrorValidationLookupInvalid(),
      ErrorValidationMaxLength.id => ErrorValidationMaxLength.fromContext(
        context!,
      ),
      ErrorValidationMinimum.id => ErrorValidationMinimum.fromContext(context!),
      ErrorValidationExclusiveMinimum.id =>
        ErrorValidationExclusiveMinimum.fromContext(context!),
      ErrorValidationMaximum.id => ErrorValidationMaximum.fromContext(context!),
      ErrorValidationExclusiveMaximum.id =>
        ErrorValidationExclusiveMaximum.fromContext(context!),
      ErrorValidationMultipleOf.id => ErrorValidationMultipleOf.fromContext(
        context!,
      ),
      ErrorValidationMaxItems.id => ErrorValidationMaxItems.fromContext(
        context!,
      ),
      ErrorValidationMinItems.id => ErrorValidationMinItems.fromContext(
        context!,
      ),
      ErrorValidationUniqueItems.id => ErrorValidationUniqueItems.fromContext(
        context!,
      ),
      ErrorValidationWrongType.id => ErrorValidationWrongType.fromContext(
        context!,
      ),
      ErrorValidationDuplicateCredentialsOnOIDCLink.id =>
        const ErrorValidationDuplicateCredentialsOnOIDCLink(),
      ErrorValidationCredentialAlreadyUsedByAnotherAccount.id =>
        ErrorValidationCredentialAlreadyUsedByAnotherAccount.fromContext(
          context!,
        ),
      ErrorValidationMustBeEqualToConstant.id =>
        ErrorValidationMustBeEqualToConstant.fromContext(context!),
      ErrorValidationConstFailed.id => const ErrorValidationConstFailed(),
      ErrorValidationPasswordTooSimilarToIdentifier.id =>
        const ErrorValidationPasswordTooSimilarToIdentifier(),
      ErrorValidationPasswordTooShort.id =>
        ErrorValidationPasswordTooShort.fromContext(context!),
      ErrorValidationPasswordTooLong.id =>
        ErrorValidationPasswordTooLong.fromContext(context!),
      ErrorValidationPasswordFoundInDataBreaches.id =>
        const ErrorValidationPasswordFoundInDataBreaches(),
      ErrorValidationNoAccountOrNoCodeSignInSetUp.id =>
        const ErrorValidationNoAccountOrNoCodeSignInSetUp(),
      ErrorValidationTraitsDontMatchPreviouslyAssociated.id =>
        const ErrorValidationTraitsDontMatchPreviouslyAssociated(),

      // Login Validation Error
      ErrorValidationLogin.id => const ErrorValidationLogin(),
      ErrorValidationLoginFlowExpired.id =>
        ErrorValidationLoginFlowExpired.fromContext(context!),
      ErrorValidationLoginNoStrategyFound.id =>
        const ErrorValidationLoginNoStrategyFound(),
      ErrorValidationRegistrationNoStrategyFound.id =>
        const ErrorValidationRegistrationNoStrategyFound(),
      ErrorValidationSettingsNoStrategyFound.id =>
        const ErrorValidationSettingsNoStrategyFound(),
      ErrorValidationRecoveryNoStrategyFound.id =>
        const ErrorValidationRecoveryNoStrategyFound(),
      ErrorValidationVerificationNoStrategyFound.id =>
        const ErrorValidationVerificationNoStrategyFound(),
      ErrorValidationLoginRequestAlreadyCompleted.id =>
        const ErrorValidationLoginRequestAlreadyCompleted(),
      ErrorValidationLoginCodeInvalidOrAlreadyUsed.id =>
        const ErrorValidationLoginCodeInvalidOrAlreadyUsed(),
      ErrorValidationLinkedCredentialsDoNotMatch.id =>
        const ErrorValidationLinkedCredentialsDoNotMatch(),

      // Registration Validation Error
      ErrorValidationRegistration.id => const ErrorValidationRegistration(),
      ErrorValidationRegistrationFlowExpired.id =>
        ErrorValidationRegistrationFlowExpired.fromContext(context!),
      ErrorValidationRegistrationRequestAlreadyCompleted.id =>
        const ErrorValidationRegistrationRequestAlreadyCompleted(),
      ErrorValidationRegistrationCodeInvalidOrAlreadyUsed.id =>
        const ErrorValidationRegistrationCodeInvalidOrAlreadyUsed(),

      // Settings Validation Error
      ErrorValidationSettings.id => const ErrorValidationSettings(),
      ErrorValidationSettingsFlowExpired.id =>
        ErrorValidationSettingsFlowExpired.fromContext(context!),

      // Recovery Validation Error
      ErrorValidationRecovery.id => const ErrorValidationRecovery(),
      ErrorValidationRecoveryRetrySuccess.id =>
        const ErrorValidationRecoveryRetrySuccess(),
      ErrorValidationRecoveryStateFailure.id =>
        const ErrorValidationRecoveryStateFailure(),
      ErrorValidationRecoveryMissingRecoveryToken.id =>
        const ErrorValidationRecoveryMissingRecoveryToken(),
      ErrorValidationRecoveryTokenInvalidOrAlreadyUsed.id =>
        const ErrorValidationRecoveryTokenInvalidOrAlreadyUsed(),
      ErrorValidationRecoveryFlowExpired.id =>
        ErrorValidationRecoveryFlowExpired.fromContext(context!),
      ErrorValidationRecoveryCodeInvalidOrAlreadyUsed.id =>
        const ErrorValidationRecoveryCodeInvalidOrAlreadyUsed(),

      // Verification Validation Error
      ErrorValidationVerification.id => const ErrorValidationVerification(),
      ErrorValidationVerificationTokenInvalidOrAlreadyUsed.id =>
        const ErrorValidationVerificationTokenInvalidOrAlreadyUsed(),
      ErrorValidationVerificationRetrySuccess.id =>
        const ErrorValidationVerificationRetrySuccess(),
      ErrorValidationVerificationStateFailure.id =>
        const ErrorValidationVerificationStateFailure(),
      ErrorValidationVerificationMissingVerificationToken.id =>
        const ErrorValidationVerificationMissingVerificationToken(),
      ErrorValidationVerificationFlowExpired.id =>
        ErrorValidationVerificationFlowExpired.fromContext(context!),
      ErrorValidationVerificationCodeInvalidOrAlreadyUsed.id =>
        const ErrorValidationVerificationCodeInvalidOrAlreadyUsed(),

      // System Error
      ErrorSystem.id => const ErrorSystem(),
      ErrorSystemGeneric.id => const ErrorSystemGeneric(),
      _ => const ErrorSystemGeneric(),
    };
  }
}

// === Login related messages ===
final class InfoSelfServiceLoginRoot extends KratosMessage {
  const InfoSelfServiceLoginRoot();

  static const id = 1010000;
}

final class InfoSelfServiceLogin extends KratosMessage {
  const InfoSelfServiceLogin();

  static const id = 1010001;
}

final class InfoSelfServiceLoginWith extends KratosMessage {
  const InfoSelfServiceLoginWith({required this.provider});

  InfoSelfServiceLoginWith.fromContext(ContextParameters contextParameters)
    : provider = contextParameters['provider']! as String;

  final String provider;

  static const id = 1010002;
}

final class InfoSelfServiceLoginReAuth extends KratosMessage {
  const InfoSelfServiceLoginReAuth();

  static const id = 1010003;
}

final class InfoSelfServiceLoginMFA extends KratosMessage {
  const InfoSelfServiceLoginMFA();

  static const id = 1010004;
}

final class InfoSelfServiceLoginVerify extends KratosMessage {
  const InfoSelfServiceLoginVerify();

  static const id = 1010005;
}

final class InfoSelfServiceLoginTOTPLabel extends KratosMessage {
  const InfoSelfServiceLoginTOTPLabel();

  static const id = 1010006;
}

final class InfoLoginLookupLabel extends KratosMessage {
  const InfoLoginLookupLabel();

  static const id = 1010007;
}

final class InfoSelfServiceLoginWebAuthn extends KratosMessage {
  const InfoSelfServiceLoginWebAuthn();

  static const id = 1010008;
}

final class InfoLoginTOTP extends KratosMessage {
  const InfoLoginTOTP();

  static const id = 1010009;
}

final class InfoLoginLookup extends KratosMessage {
  const InfoLoginLookup();

  static const id = 1010010;
}

final class InfoSelfServiceLoginContinueWebAuthn extends KratosMessage {
  const InfoSelfServiceLoginContinueWebAuthn();

  static const id = 1010011;
}

final class InfoSelfServiceLoginWebAuthnPasswordless extends KratosMessage {
  const InfoSelfServiceLoginWebAuthnPasswordless();

  static const id = 1010012;
}

final class InfoSelfServiceLoginContinue extends KratosMessage {
  const InfoSelfServiceLoginContinue();

  static const id = 1010013;
}

final class InfoSelfServiceEmailHasBeenSent extends KratosMessage {
  const InfoSelfServiceEmailHasBeenSent();

  static const id = 1010014;
}

final class InfoSelfServiceSignInWithCode extends KratosMessage {
  const InfoSelfServiceSignInWithCode();

  static const id = 1010015;
}

final class InfoSelfServiceSigningInWillLinkYourAccount extends KratosMessage {
  const InfoSelfServiceSigningInWillLinkYourAccount({
    required this.identifier,
    required this.provider,
  });

  InfoSelfServiceSigningInWillLinkYourAccount.fromContext(
    ContextParameters contextParameters,
  ) : identifier = contextParameters['duplicateIdentifier']! as String,
      provider = contextParameters['provider']! as String;

  final String identifier;
  final String provider;

  static const id = 1010016;
}

final class InfoSelfServiceSignInAndLink extends KratosMessage {
  const InfoSelfServiceSignInAndLink();

  static const id = 1010017;
}

final class InfoSelfserviceSignInAndLinkCredential extends KratosMessage {
  const InfoSelfserviceSignInAndLinkCredential({required this.provider});

  InfoSelfserviceSignInAndLinkCredential.fromContext(
    ContextParameters contextParameters,
  ) : provider = contextParameters['provider']! as String;

  final String provider;

  static const id = 1010018;
}

final class InfoSendCodeTo extends KratosMessage {
  const InfoSendCodeTo({required this.address});

  InfoSendCodeTo.fromContext(ContextParameters contextParameters)
    : address = contextParameters['address']! as String;

  final String address;

  static const id = 1010023;
}

// === Logout related messages ===
final class InfoSelfServiceLogout extends KratosMessage {
  const InfoSelfServiceLogout();

  static const id = 1020000;
}

// === MFA and Registration messages ===
final class InfoSelfServiceMFA extends KratosMessage {
  const InfoSelfServiceMFA();

  static const id = 1030000;
}

final class InfoSelfServiceRegistrationRoot extends KratosMessage {
  const InfoSelfServiceRegistrationRoot();

  static const id = 1040000;
}

final class InfoSelfServiceRegistration extends KratosMessage {
  const InfoSelfServiceRegistration();

  static const id = 1040001;
}

final class InfoSelfServiceRegistrationWith extends KratosMessage {
  const InfoSelfServiceRegistrationWith({required this.provider});

  InfoSelfServiceRegistrationWith.fromContext(
    ContextParameters contextParameters,
  ) : provider = contextParameters['provider']! as String;

  final String provider;

  static const id = 1040002;
}

final class InfoSelfServiceRegistrationContinue extends KratosMessage {
  const InfoSelfServiceRegistrationContinue();

  static const id = 1040003;
}

final class InfoSelfServiceRegistrationRegisterWebAuthn extends KratosMessage {
  const InfoSelfServiceRegistrationRegisterWebAuthn();

  static const id = 1040004;
}

final class InfoSelfServiceRegistrationEmailHasBeenSent extends KratosMessage {
  const InfoSelfServiceRegistrationEmailHasBeenSent();

  static const id = 1040005;
}

final class InfoSelfServiceRegistrationRegisterWithCode extends KratosMessage {
  const InfoSelfServiceRegistrationRegisterWithCode();

  static const id = 1040006;
}

// === Settings messages ===
final class InfoSelfServiceSettings extends KratosMessage {
  const InfoSelfServiceSettings();

  static const id = 1050000;
}

final class InfoSelfServiceSettingsUpdateSuccess extends KratosMessage {
  const InfoSelfServiceSettingsUpdateSuccess();

  static const id = 1050001;
}

final class InfoSelfServiceSettingsUpdateLinkOidc extends KratosMessage {
  const InfoSelfServiceSettingsUpdateLinkOidc({required this.provider});

  InfoSelfServiceSettingsUpdateLinkOidc.fromContext(
    ContextParameters contextParameters,
  ) : provider = contextParameters['provider']! as String;

  final String provider;

  static const id = 1050002;
}

final class InfoSelfServiceSettingsUpdateUnlinkOidc extends KratosMessage {
  const InfoSelfServiceSettingsUpdateUnlinkOidc({required this.provider});

  InfoSelfServiceSettingsUpdateUnlinkOidc.fromContext(
    ContextParameters contextParameters,
  ) : provider = contextParameters['provider']! as String;

  final String provider;

  static const id = 1050003;
}

final class InfoSelfServiceSettingsUpdateUnlinkTOTP extends KratosMessage {
  const InfoSelfServiceSettingsUpdateUnlinkTOTP();

  static const id = 1050004;
}

final class InfoSelfServiceSettingsTOTPQRCode extends KratosMessage {
  const InfoSelfServiceSettingsTOTPQRCode();

  static const id = 1050005;
}

final class InfoSelfServiceSettingsTOTPSecret extends KratosMessage {
  const InfoSelfServiceSettingsTOTPSecret({required this.secret});

  InfoSelfServiceSettingsTOTPSecret.fromContext(
    ContextParameters contextParameters,
  ) : secret = contextParameters['secret']! as String;

  final String secret;

  static const id = 1050006;
}

final class InfoSelfServiceSettingsRevealLookup extends KratosMessage {
  const InfoSelfServiceSettingsRevealLookup();

  static const id = 1050007;
}

final class InfoSelfServiceSettingsRegenerateLookup extends KratosMessage {
  const InfoSelfServiceSettingsRegenerateLookup();

  static const id = 1050008;
}

final class InfoSelfServiceSettingsLookupSecret extends KratosMessage {
  const InfoSelfServiceSettingsLookupSecret({required this.secret});

  InfoSelfServiceSettingsLookupSecret.fromContext(
    ContextParameters contextParameters,
  ) : secret = contextParameters['secret']! as String;

  final String secret;

  static const id = 1050009;
}

final class InfoSelfServiceSettingsLookupSecretLabel extends KratosMessage {
  const InfoSelfServiceSettingsLookupSecretLabel();

  static const id = 1050010;
}

final class InfoSelfServiceSettingsLookupConfirm extends KratosMessage {
  const InfoSelfServiceSettingsLookupConfirm();

  static const id = 1050011;
}

final class InfoSelfServiceSettingsRegisterWebAuthn extends KratosMessage {
  const InfoSelfServiceSettingsRegisterWebAuthn();

  static const id = 1050012;
}

final class InfoSelfServiceSettingsRegisterWebAuthnDisplayName
    extends KratosMessage {
  const InfoSelfServiceSettingsRegisterWebAuthnDisplayName();

  static const id = 1050013;
}

final class InfoSelfServiceSettingsLookupSecretUsed extends KratosMessage {
  const InfoSelfServiceSettingsLookupSecretUsed({required this.usedAtUnix});

  InfoSelfServiceSettingsLookupSecretUsed.fromContext(
    ContextParameters contextParameters,
  ) : usedAtUnix = contextParameters['used_at_unix']! as int;

  final int usedAtUnix;

  static const id = 1050014;
}

final class InfoSelfServiceSettingsLookupSecretList extends KratosMessage {
  const InfoSelfServiceSettingsLookupSecretList({required this.secrets});

  InfoSelfServiceSettingsLookupSecretList.fromContext(
    ContextParameters contextParameters,
  ) : secrets = contextParameters['secrets']! as List<String>;

  final List<String> secrets;

  static const id = 1050015;
}

final class InfoSelfServiceSettingsDisableLookup extends KratosMessage {
  const InfoSelfServiceSettingsDisableLookup();

  static const id = 1050016;
}

final class InfoSelfServiceSettingsTOTPSecretLabel extends KratosMessage {
  const InfoSelfServiceSettingsTOTPSecretLabel();

  static const id = 1050017;
}

final class InfoSelfServiceSettingsRemoveWebAuthn extends KratosMessage {
  const InfoSelfServiceSettingsRemoveWebAuthn({required this.displayName});

  InfoSelfServiceSettingsRemoveWebAuthn.fromContext(
    ContextParameters contextParameters,
  ) : displayName = contextParameters['display_name']! as String;

  final String displayName;

  static const id = 1050018;
}

final class InfoSelfServiceSettingsRemovePasskey extends KratosMessage {
  const InfoSelfServiceSettingsRemovePasskey({required this.displayName});

  InfoSelfServiceSettingsRemovePasskey.fromContext(
    ContextParameters contextParameters,
  ) : displayName = contextParameters['display_name']! as String;

  final String displayName;

  static const id = 1050020;
}

// === Recovery messages ===
final class InfoSelfServiceRecovery extends KratosMessage {
  const InfoSelfServiceRecovery();

  static const id = 1060000;
}

final class InfoSelfServiceRecoverySuccessful extends KratosMessage {
  const InfoSelfServiceRecoverySuccessful();

  static const id = 1060001;
}

final class InfoSelfServiceRecoveryEmailSent extends KratosMessage {
  const InfoSelfServiceRecoveryEmailSent();

  static const id = 1060002;
}

final class InfoSelfServiceRecoveryEmailWithCodeSent extends KratosMessage {
  const InfoSelfServiceRecoveryEmailWithCodeSent();

  static const id = 1060003;
}

// === Node Label messages ===
final class InfoNodeLabel extends KratosMessage {
  const InfoNodeLabel();

  static const id = 1070000;
}

final class InfoNodeLabelInputPassword extends KratosMessage {
  const InfoNodeLabelInputPassword();

  static const id = 1070001;
}

final class InfoNodeLabelGenerated extends KratosMessage {
  const InfoNodeLabelGenerated({required this.title});

  InfoNodeLabelGenerated.fromContext(ContextParameters contextParameters)
    : title = contextParameters['title']! as String;

  final String title;

  static const id = 1070002;
}

final class InfoNodeLabelSave extends KratosMessage {
  const InfoNodeLabelSave();

  static const id = 1070003;
}

final class InfoNodeLabelID extends KratosMessage {
  const InfoNodeLabelID();

  static const id = 1070004;
}

final class InfoNodeLabelSubmit extends KratosMessage {
  const InfoNodeLabelSubmit();

  static const id = 1070005;
}

final class InfoNodeLabelVerifyOTP extends KratosMessage {
  const InfoNodeLabelVerifyOTP();

  static const id = 1070006;
}

final class InfoNodeLabelEmail extends KratosMessage {
  const InfoNodeLabelEmail();

  static const id = 1070007;
}

final class InfoNodeLabelResendOTP extends KratosMessage {
  const InfoNodeLabelResendOTP();

  static const id = 1070008;
}

final class InfoNodeLabelContinue extends KratosMessage {
  const InfoNodeLabelContinue();

  static const id = 1070009;
}

final class InfoNodeLabelRecoveryCode extends KratosMessage {
  const InfoNodeLabelRecoveryCode();

  static const id = 1070010;
}

final class InfoNodeLabelVerificationCode extends KratosMessage {
  const InfoNodeLabelVerificationCode();

  static const id = 1070011;
}

final class InfoNodeLabelRegistrationCode extends KratosMessage {
  const InfoNodeLabelRegistrationCode();

  static const id = 1070012;
}

final class InfoNodeLabelLoginCode extends KratosMessage {
  const InfoNodeLabelLoginCode();

  static const id = 1070013;
}

final class InfoNodeLabelLoginAndLinkCredential extends KratosMessage {
  const InfoNodeLabelLoginAndLinkCredential();

  static const id = 1070014;
}

// === Verification messages ===
final class InfoSelfServiceVerification extends KratosMessage {
  const InfoSelfServiceVerification();

  static const id = 1080000;
}

final class InfoSelfServiceVerificationEmailSent extends KratosMessage {
  const InfoSelfServiceVerificationEmailSent();

  static const id = 1080001;
}

final class InfoSelfServiceVerificationSuccessful extends KratosMessage {
  const InfoSelfServiceVerificationSuccessful();

  static const id = 1080002;
}

final class InfoSelfServiceVerificationEmailWithCodeSent extends KratosMessage {
  const InfoSelfServiceVerificationEmailWithCodeSent();

  static const id = 1080003;
}

// === Validation Error messages ===
final class ErrorValidation extends KratosMessage {
  const ErrorValidation();

  static const id = 4000000;
}

final class ErrorValidationGeneric extends KratosMessage {
  const ErrorValidationGeneric({required this.reason});

  ErrorValidationGeneric.fromContext(ContextParameters contextParameters)
    : reason = contextParameters['reason']! as String;

  final String reason;

  static const id = 4000001;
}

final class ErrorValidationRequired extends KratosMessage {
  const ErrorValidationRequired({required this.property});

  ErrorValidationRequired.fromContext(ContextParameters contextParameters)
    : property = contextParameters['property']! as String;

  final String property;

  static const id = 4000002;
}

final class ErrorValidationMinLength extends KratosMessage {
  const ErrorValidationMinLength({required this.actual, required this.minimum});

  ErrorValidationMinLength.fromContext(ContextParameters contextParameters)
    : actual = contextParameters['actual_length']! as int,
      minimum = contextParameters['min_length']! as int;

  final int actual;
  final int minimum;

  static const id = 4000003;
}

final class ErrorValidationInvalidFormat extends KratosMessage {
  const ErrorValidationInvalidFormat({required this.pattern});

  ErrorValidationInvalidFormat.fromContext(ContextParameters contextParameters)
    : pattern = contextParameters['pattern']! as String;

  final String pattern;

  static const id = 4000004;
}

final class ErrorValidationPasswordPolicyViolation extends KratosMessage {
  const ErrorValidationPasswordPolicyViolation({required this.reason});

  ErrorValidationPasswordPolicyViolation.fromContext(
    ContextParameters contextParameters,
  ) : reason = contextParameters['reason']! as String;

  final String reason;

  static const id = 4000005;
}

final class ErrorValidationInvalidCredentials extends KratosMessage {
  const ErrorValidationInvalidCredentials();

  static const id = 4000006;
}

final class ErrorValidationDuplicateCredentials extends KratosMessage {
  const ErrorValidationDuplicateCredentials();

  static const id = 4000007;
}

final class ErrorValidationTOTPVerifierWrong extends KratosMessage {
  const ErrorValidationTOTPVerifierWrong();

  static const id = 4000008;
}

final class ErrorValidationIdentifierMissing extends KratosMessage {
  const ErrorValidationIdentifierMissing();

  static const id = 4000009;
}

final class ErrorValidationAddressNotVerified extends KratosMessage {
  const ErrorValidationAddressNotVerified();

  static const id = 4000010;
}

final class ErrorValidationNoTOTPDevice extends KratosMessage {
  const ErrorValidationNoTOTPDevice();

  static const id = 4000011;
}

final class ErrorValidationLookupAlreadyUsed extends KratosMessage {
  const ErrorValidationLookupAlreadyUsed();

  static const id = 4000012;
}

final class ErrorValidationNoWebAuthnDevice extends KratosMessage {
  const ErrorValidationNoWebAuthnDevice();

  static const id = 4000013;
}

final class ErrorValidationNoLookup extends KratosMessage {
  const ErrorValidationNoLookup();

  static const id = 4000014;
}

final class ErrorValidationSuchNoWebAuthnUser extends KratosMessage {
  const ErrorValidationSuchNoWebAuthnUser();

  static const id = 4000015;
}

final class ErrorValidationLookupInvalid extends KratosMessage {
  const ErrorValidationLookupInvalid();

  static const id = 4000016;
}

final class ErrorValidationMaxLength extends KratosMessage {
  const ErrorValidationMaxLength({
    required this.actualLength,
    required this.maxLength,
  });

  ErrorValidationMaxLength.fromContext(ContextParameters contextParameters)
    : actualLength = contextParameters['actual_length']! as int,
      maxLength = contextParameters['max_length']! as int;

  final int actualLength;
  final int maxLength;

  static const id = 4000017;
}

final class ErrorValidationMinimum extends KratosMessage {
  const ErrorValidationMinimum({required this.actual, required this.minimum});

  ErrorValidationMinimum.fromContext(ContextParameters contextParameters)
    : actual = contextParameters['actual']! as int,
      minimum = contextParameters['minimum']! as int;

  final int actual;
  final int minimum;

  static const id = 4000018;
}

final class ErrorValidationExclusiveMinimum extends KratosMessage {
  const ErrorValidationExclusiveMinimum({
    required this.actual,
    required this.minimum,
  });

  ErrorValidationExclusiveMinimum.fromContext(
    ContextParameters contextParameters,
  ) : actual = contextParameters['actual']! as int,
      minimum = contextParameters['minimum']! as int;

  final int actual;
  final int minimum;

  static const id = 4000019;
}

final class ErrorValidationMaximum extends KratosMessage {
  const ErrorValidationMaximum({required this.actual, required this.maximum});

  ErrorValidationMaximum.fromContext(ContextParameters contextParameters)
    : actual = contextParameters['actual']! as int,
      maximum = contextParameters['maximum']! as int;

  final int actual;
  final int maximum;

  static const id = 4000020;
}

final class ErrorValidationExclusiveMaximum extends KratosMessage {
  const ErrorValidationExclusiveMaximum({
    required this.actual,
    required this.maximum,
  });

  ErrorValidationExclusiveMaximum.fromContext(
    ContextParameters contextParameters,
  ) : actual = contextParameters['actual']! as int,
      maximum = contextParameters['maximum']! as int;

  final int actual;
  final int maximum;

  static const id = 4000021;
}

final class ErrorValidationMultipleOf extends KratosMessage {
  const ErrorValidationMultipleOf({required this.actual, required this.base});

  ErrorValidationMultipleOf.fromContext(ContextParameters contextParameters)
    : actual = contextParameters['actual']! as int,
      base = contextParameters['base']! as int;

  final int actual;
  final int base;

  static const id = 4000022;
}

final class ErrorValidationMaxItems extends KratosMessage {
  const ErrorValidationMaxItems({
    required this.actualItems,
    required this.maxItems,
  });

  ErrorValidationMaxItems.fromContext(ContextParameters contextParameters)
    : actualItems = contextParameters['actual_items']! as int,
      maxItems = contextParameters['max_items']! as int;

  final int actualItems;
  final int maxItems;

  static const id = 4000023;
}

final class ErrorValidationMinItems extends KratosMessage {
  const ErrorValidationMinItems({
    required this.actualItems,
    required this.minItems,
  });

  ErrorValidationMinItems.fromContext(ContextParameters contextParameters)
    : actualItems = contextParameters['actual_items']! as int,
      minItems = contextParameters['min_items']! as int;

  final int actualItems;
  final int minItems;

  static const id = 4000024;
}

final class ErrorValidationUniqueItems extends KratosMessage {
  const ErrorValidationUniqueItems({
    required this.indexA,
    required this.indexB,
  });

  ErrorValidationUniqueItems.fromContext(ContextParameters contextParameters)
    : indexA = contextParameters['index_a']! as int,
      indexB = contextParameters['index_b']! as int;

  final int indexA;
  final int indexB;

  static const id = 4000025;
}

final class ErrorValidationWrongType extends KratosMessage {
  const ErrorValidationWrongType({
    required this.actualType,
    required this.allowedTypesList,
  });

  ErrorValidationWrongType.fromContext(ContextParameters contextParameters)
    : actualType = contextParameters['actual_type']! as String,
      allowedTypesList =
          contextParameters['allowed_types_list']! as List<String>;

  final String actualType;
  final List<String> allowedTypesList;

  static const parameterNames = ['actual_type'];

  static const id = 4000026;
}

final class ErrorValidationDuplicateCredentialsOnOIDCLink
    extends KratosMessage {
  const ErrorValidationDuplicateCredentialsOnOIDCLink();

  static const id = 4000027;
}

final class ErrorValidationCredentialAlreadyUsedByAnotherAccount
    extends KratosMessage {
  const ErrorValidationCredentialAlreadyUsedByAnotherAccount({
    required this.credentialIdentifierHint,
    required this.availableCredentialTypesList,
  });

  ErrorValidationCredentialAlreadyUsedByAnotherAccount.fromContext(
    ContextParameters contextParameters,
  ) : credentialIdentifierHint =
          contextParameters['credential_identifier_hint']! as String,
      availableCredentialTypesList =
          contextParameters['available_credential_types_list']! as List<String>;

  final String credentialIdentifierHint;
  final List<String> availableCredentialTypesList;

  static const id = 4000028;
}

final class ErrorValidationMustBeEqualToConstant extends KratosMessage {
  const ErrorValidationMustBeEqualToConstant({required this.expected});

  ErrorValidationMustBeEqualToConstant.fromContext(
    ContextParameters contextParameters,
  ) : expected = contextParameters['expected']! as String;

  final String expected;

  static const id = 4000029;
}

final class ErrorValidationConstFailed extends KratosMessage {
  const ErrorValidationConstFailed();

  static const id = 4000030;
}

final class ErrorValidationPasswordTooSimilarToIdentifier
    extends KratosMessage {
  const ErrorValidationPasswordTooSimilarToIdentifier();

  static const id = 4000031;
}

final class ErrorValidationPasswordTooShort extends KratosMessage {
  const ErrorValidationPasswordTooShort({
    required this.actualLength,
    required this.minLength,
  });

  ErrorValidationPasswordTooShort.fromContext(
    ContextParameters contextParameters,
  ) : actualLength = contextParameters['actual_length']! as int,
      minLength = contextParameters['min_length']! as int;

  final int actualLength;
  final int minLength;

  static const id = 4000032;
}

final class ErrorValidationPasswordTooLong extends KratosMessage {
  const ErrorValidationPasswordTooLong({
    required this.actualLength,
    required this.maxLength,
  });

  ErrorValidationPasswordTooLong.fromContext(
    ContextParameters contextParameters,
  ) : actualLength = contextParameters['actual_length']! as int,
      maxLength = contextParameters['max_length']! as int;

  final int actualLength;
  final int maxLength;

  static const id = 4000033;
}

final class ErrorValidationPasswordFoundInDataBreaches extends KratosMessage {
  const ErrorValidationPasswordFoundInDataBreaches();

  static const id = 4000034;
}

final class ErrorValidationNoAccountOrNoCodeSignInSetUp extends KratosMessage {
  const ErrorValidationNoAccountOrNoCodeSignInSetUp();

  static const id = 4000035;
}

final class ErrorValidationTraitsDontMatchPreviouslyAssociated
    extends KratosMessage {
  const ErrorValidationTraitsDontMatchPreviouslyAssociated();

  static const id = 4000036;
}

// === Login Validation Error messages ===
final class ErrorValidationLogin extends KratosMessage {
  const ErrorValidationLogin();

  static const id = 4010000;
}

final class ErrorValidationLoginFlowExpired extends KratosMessage {
  const ErrorValidationLoginFlowExpired({required this.expiredAtUnix});

  ErrorValidationLoginFlowExpired.fromContext(
    ContextParameters contextParameters,
  ) : expiredAtUnix = contextParameters['expired_at_unix']! as int;

  final int expiredAtUnix;

  static const id = 4010001;
}

final class ErrorValidationLoginNoStrategyFound extends KratosMessage {
  const ErrorValidationLoginNoStrategyFound();

  static const id = 4010002;
}

final class ErrorValidationRegistrationNoStrategyFound extends KratosMessage {
  const ErrorValidationRegistrationNoStrategyFound();

  static const id = 4010003;
}

final class ErrorValidationSettingsNoStrategyFound extends KratosMessage {
  const ErrorValidationSettingsNoStrategyFound();

  static const id = 4010004;
}

final class ErrorValidationRecoveryNoStrategyFound extends KratosMessage {
  const ErrorValidationRecoveryNoStrategyFound();

  static const id = 4010005;
}

final class ErrorValidationVerificationNoStrategyFound extends KratosMessage {
  const ErrorValidationVerificationNoStrategyFound();

  static const id = 4010006;
}

final class ErrorValidationLoginRequestAlreadyCompleted extends KratosMessage {
  const ErrorValidationLoginRequestAlreadyCompleted();

  static const id = 4010007;
}

final class ErrorValidationLoginCodeInvalidOrAlreadyUsed extends KratosMessage {
  const ErrorValidationLoginCodeInvalidOrAlreadyUsed();

  static const id = 4010008;
}

final class ErrorValidationLinkedCredentialsDoNotMatch extends KratosMessage {
  const ErrorValidationLinkedCredentialsDoNotMatch();

  static const id = 4010009;
}

// === Registration Validation Error messages ===
final class ErrorValidationRegistration extends KratosMessage {
  const ErrorValidationRegistration();

  static const id = 4040000;
}

final class ErrorValidationRegistrationFlowExpired extends KratosMessage {
  const ErrorValidationRegistrationFlowExpired({required this.expiredAtUnix});

  ErrorValidationRegistrationFlowExpired.fromContext(
    ContextParameters contextParameters,
  ) : expiredAtUnix = contextParameters['expired_at_unix']! as int;

  final int expiredAtUnix;

  static const id = 4040001;
}

final class ErrorValidationRegistrationRequestAlreadyCompleted
    extends KratosMessage {
  const ErrorValidationRegistrationRequestAlreadyCompleted();

  static const id = 4040002;
}

final class ErrorValidationRegistrationCodeInvalidOrAlreadyUsed
    extends KratosMessage {
  const ErrorValidationRegistrationCodeInvalidOrAlreadyUsed();

  static const id = 4040003;
}

// === Settings Validation Error messages ===
final class ErrorValidationSettings extends KratosMessage {
  const ErrorValidationSettings();

  static const id = 4050000;
}

final class ErrorValidationSettingsFlowExpired extends KratosMessage {
  const ErrorValidationSettingsFlowExpired({required this.expiredAtUnix});

  ErrorValidationSettingsFlowExpired.fromContext(
    ContextParameters contextParameters,
  ) : expiredAtUnix = contextParameters['expired_at_unix']! as int;

  final int expiredAtUnix;

  static const id = 4050001;
}

// === Recovery Validation Error messages ===
final class ErrorValidationRecovery extends KratosMessage {
  const ErrorValidationRecovery();

  static const id = 4060000;
}

final class ErrorValidationRecoveryRetrySuccess extends KratosMessage {
  const ErrorValidationRecoveryRetrySuccess();

  static const id = 4060001;
}

final class ErrorValidationRecoveryStateFailure extends KratosMessage {
  const ErrorValidationRecoveryStateFailure();

  static const id = 4060002;
}

final class ErrorValidationRecoveryMissingRecoveryToken extends KratosMessage {
  const ErrorValidationRecoveryMissingRecoveryToken();

  static const id = 4060003;
}

final class ErrorValidationRecoveryTokenInvalidOrAlreadyUsed
    extends KratosMessage {
  const ErrorValidationRecoveryTokenInvalidOrAlreadyUsed();

  static const id = 4060004;
}

final class ErrorValidationRecoveryFlowExpired extends KratosMessage {
  const ErrorValidationRecoveryFlowExpired({required this.expiredAtUnix});

  ErrorValidationRecoveryFlowExpired.fromContext(
    ContextParameters contextParameters,
  ) : expiredAtUnix = contextParameters['expired_at_unix']! as int;

  final int expiredAtUnix;

  static const id = 4060005;
}

final class ErrorValidationRecoveryCodeInvalidOrAlreadyUsed
    extends KratosMessage {
  const ErrorValidationRecoveryCodeInvalidOrAlreadyUsed();

  static const id = 4060006;
}

// === Verification Validation Error messages ===
final class ErrorValidationVerification extends KratosMessage {
  const ErrorValidationVerification();

  static const id = 4070000;
}

final class ErrorValidationVerificationTokenInvalidOrAlreadyUsed
    extends KratosMessage {
  const ErrorValidationVerificationTokenInvalidOrAlreadyUsed();

  static const id = 4070001;
}

final class ErrorValidationVerificationRetrySuccess extends KratosMessage {
  const ErrorValidationVerificationRetrySuccess();

  static const id = 4070002;
}

final class ErrorValidationVerificationStateFailure extends KratosMessage {
  const ErrorValidationVerificationStateFailure();

  static const id = 4070003;
}

final class ErrorValidationVerificationMissingVerificationToken
    extends KratosMessage {
  const ErrorValidationVerificationMissingVerificationToken();

  static const id = 4070004;
}

final class ErrorValidationVerificationFlowExpired extends KratosMessage {
  const ErrorValidationVerificationFlowExpired({required this.expiredAtUnix});

  ErrorValidationVerificationFlowExpired.fromContext(
    ContextParameters contextParameters,
  ) : expiredAtUnix = contextParameters['expired_at_unix']! as int;

  final int expiredAtUnix;

  static const id = 4070005;
}

final class ErrorValidationVerificationCodeInvalidOrAlreadyUsed
    extends KratosMessage {
  const ErrorValidationVerificationCodeInvalidOrAlreadyUsed();

  static const id = 4070006;
}

// === System Error messages ===
final class ErrorSystem extends KratosMessage {
  const ErrorSystem();

  static const id = 5000000;
}

final class ErrorSystemGeneric extends KratosMessage {
  const ErrorSystemGeneric();

  static const id = 5000001;
}
