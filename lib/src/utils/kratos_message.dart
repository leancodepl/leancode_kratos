// https://raw.githubusercontent.com/ory/docs/master/docs/kratos/concepts/messages.json

typedef ContextParameters = Map<String, String>;

sealed class KratosMessage {
  const KratosMessage();

  static const _defaultFallback = ErrorSystemGeneric();

  static KratosMessage forIdWithParameters(
    int id, {
    Map<String, String>? contextParameters,
  }) {
    switch (id) {
      // Login (1010000-1010099)
      case InfoSelfServiceLoginRoot.id: // 1010000
        return const InfoSelfServiceLoginRoot();
      case InfoSelfServiceLogin.id: // 1010001
        return const InfoSelfServiceLogin();
      case InfoSelfServiceLoginWith.id: // 1010002
        return InfoSelfServiceLoginWith.maybeFromParameters(
                contextParameters) ??
            _defaultFallback;
      case InfoSelfServiceLoginReAuth.id: // 1010003
        return const InfoSelfServiceLoginReAuth();
      case InfoSelfServiceLoginMFA.id: // 1010004
        return const InfoSelfServiceLoginMFA();
      case InfoSelfServiceLoginVerify.id: // 1010005
        return const InfoSelfServiceLoginVerify();
      case InfoSelfServiceLoginTOTPLabel.id: // 1010006
        return const InfoSelfServiceLoginTOTPLabel();
      case InfoLoginLookupLabel.id: // 1010007
        return const InfoLoginLookupLabel();
      case InfoSelfServiceLoginWebAuthn.id: // 1010008
        return const InfoSelfServiceLoginWebAuthn();
      case InfoLoginTOTP.id: // 1010009
        return const InfoLoginTOTP();
      case InfoLoginLookup.id: // 1010010
        return const InfoLoginLookup();
      case InfoSelfServiceLoginContinueWebAuthn.id: // 1010011
        return const InfoSelfServiceLoginContinueWebAuthn();
      case InfoSelfServiceLoginWebAuthnPasswordless.id: // 1010012
        return const InfoSelfServiceLoginWebAuthnPasswordless();
      case InfoSelfServiceLoginContinue.id: // 1010013
        return const InfoSelfServiceLoginContinue();
      case InfoSelfServiceEmailHasBeenSent.id: // 1010014
        return const InfoSelfServiceEmailHasBeenSent();
      case InfoSelfServiceSignInWithCode.id: // 1010015
        return const InfoSelfServiceSignInWithCode();
      case InfoSelfServiceSigningInWillLinkYourAccount.id: // 1010016
        return InfoSelfServiceSigningInWillLinkYourAccount.maybeFromParameters(
              contextParameters,
            ) ??
            _defaultFallback;
      case InfoSelfServiceSignInAndLink.id: // 1010017
        return const InfoSelfServiceSignInAndLink();
      case InfoSelfserviceSignInAndLinkCredential.id: // 1010018
        return InfoSelfserviceSignInAndLinkCredential.maybeFromParameters(
              contextParameters,
            ) ??
            _defaultFallback;
      case InfoSendCodeTo.id: // 1010023
        return InfoSendCodeTo.maybeFromParameters(
              contextParameters,
            ) ??
            _defaultFallback;

      // Logout (1020000-1020099)
      case InfoSelfServiceLogout.id: // 1020000
        return const InfoSelfServiceLogout();

      // MFA and Registration (1030000-1040099)
      case InfoSelfServiceMFA.id: // 1030000
        return const InfoSelfServiceMFA();
      case InfoSelfServiceRegistrationRoot.id: // 1040000
        return const InfoSelfServiceRegistrationRoot();
      case InfoSelfServiceRegistration.id: // 1040001
        return const InfoSelfServiceRegistration();
      case InfoSelfServiceRegistrationWith.id: // 1040002
        return InfoSelfServiceRegistrationWith.maybeFromParameters(
            contextParameters);
      case InfoSelfServiceRegistrationContinue.id: // 1040003
        return const InfoSelfServiceRegistrationContinue();
      case InfoSelfServiceRegistrationRegisterWebAuthn.id: // 1040004
        return const InfoSelfServiceRegistrationRegisterWebAuthn();
      case InfoSelfServiceRegistrationEmailHasBeenSent.id: // 1040005
        return const InfoSelfServiceRegistrationEmailHasBeenSent();
      case InfoSelfServiceRegistrationRegisterWithCode.id: // 1040006
        return const InfoSelfServiceRegistrationRegisterWithCode();

      // Settings (1050000-1050099)
      case InfoSelfServiceSettings.id: // 1050000
        return const InfoSelfServiceSettings();
      case InfoSelfServiceSettingsUpdateSuccess.id: // 1050001
        return const InfoSelfServiceSettingsUpdateSuccess();
      case InfoSelfServiceSettingsUpdateLinkOidc.id: // 1050002
        return InfoSelfServiceSettingsUpdateLinkOidc.maybeFromParameters(
              contextParameters,
            ) ??
            _defaultFallback;
      case InfoSelfServiceSettingsUpdateUnlinkOidc.id: // 1050003
        final provider = contextParameters?['provider'];
        return InfoSelfServiceSettingsUpdateUnlinkOidc(provider: provider);
      case InfoSelfServiceSettingsUpdateUnlinkTOTP.id: // 1050004
        return const InfoSelfServiceSettingsUpdateUnlinkTOTP();
      case InfoSelfServiceSettingsTOTPQRCode.id: // 1050005
        return const InfoSelfServiceSettingsTOTPQRCode();
      case InfoSelfServiceSettingsTOTPSecret.id: // 1050006
        final secret = contextParameters?['secret'];
        return InfoSelfServiceSettingsTOTPSecret(secret: secret);
      case InfoSelfServiceSettingsRevealLookup.id: // 1050007
        return const InfoSelfServiceSettingsRevealLookup();
      case InfoSelfServiceSettingsRegenerateLookup.id: // 1050008
        return const InfoSelfServiceSettingsRegenerateLookup();
      case InfoSelfServiceSettingsLookupSecret.id: // 1050009
        final secret = contextParameters?['secret'];
        return InfoSelfServiceSettingsLookupSecret(secret: secret);
      case InfoSelfServiceSettingsLookupSecretLabel.id: // 1050010
        return const InfoSelfServiceSettingsLookupSecretLabel();
      case InfoSelfServiceSettingsLookupConfirm.id: // 1050011
        return const InfoSelfServiceSettingsLookupConfirm();
      case InfoSelfServiceSettingsRegisterWebAuthn.id: // 1050012
        return const InfoSelfServiceSettingsRegisterWebAuthn();
      case InfoSelfServiceSettingsRegisterWebAuthnDisplayName.id: // 1050013
        return const InfoSelfServiceSettingsRegisterWebAuthnDisplayName();
      case InfoSelfServiceSettingsLookupSecretUsed.id: // 1050014
        return const InfoSelfServiceSettingsLookupSecretUsed();
      case InfoSelfServiceSettingsLookupSecretList.id: // 1050015
        return const InfoSelfServiceSettingsLookupSecretList();
      case InfoSelfServiceSettingsDisableLookup.id: // 1050016
        return const InfoSelfServiceSettingsDisableLookup();
      case InfoSelfServiceSettingsTOTPSecretLabel.id: // 1050017
        return const InfoSelfServiceSettingsTOTPSecretLabel();
      case InfoSelfServiceSettingsRemoveWebAuthn.id: // 1050018
        final displayName = contextParameters?['display_name'];
        return InfoSelfServiceSettingsRemoveWebAuthn(displayName: displayName);
      case InfoSelfServiceSettingsRemovePasskey.id: // 1050020
        final displayName = contextParameters?['display_name'];
        return InfoSelfServiceSettingsRemovePasskey(displayName: displayName);

      // Recovery (1060000-1060099)
      case InfoSelfServiceRecovery.id: // 1060000
        return const InfoSelfServiceRecovery();
      case InfoSelfServiceRecoverySuccessful.id: // 1060001
        return const InfoSelfServiceRecoverySuccessful();
      case InfoSelfServiceRecoveryEmailSent.id: // 1060002
        return const InfoSelfServiceRecoveryEmailSent();
      case InfoSelfServiceRecoveryEmailWithCodeSent.id: // 1060003
        return const InfoSelfServiceRecoveryEmailWithCodeSent();

      // Node Labels (1070000-1070099)
      case InfoNodeLabel.id: // 1070000
        return const InfoNodeLabel();
      case InfoNodeLabelInputPassword.id: // 1070001
        return const InfoNodeLabelInputPassword();
      case InfoNodeLabelGenerated.id: // 1070002
        final title = contextParameters?['title'];
        return InfoNodeLabelGenerated(title: title);
      case InfoNodeLabelSave.id: // 1070003
        return const InfoNodeLabelSave();
      case InfoNodeLabelID.id: // 1070004
        return const InfoNodeLabelID();
      case InfoNodeLabelSubmit.id: // 1070005
        return const InfoNodeLabelSubmit();
      case InfoNodeLabelVerifyOTP.id: // 1070006
        return const InfoNodeLabelVerifyOTP();
      case InfoNodeLabelEmail.id: // 1070007
        return const InfoNodeLabelEmail();
      case InfoNodeLabelResendOTP.id: // 1070008
        return const InfoNodeLabelResendOTP();
      case InfoNodeLabelContinue.id: // 1070009
        return const InfoNodeLabelContinue();
      case InfoNodeLabelRecoveryCode.id: // 1070010
        return const InfoNodeLabelRecoveryCode();
      case InfoNodeLabelVerificationCode.id: // 1070011
        return const InfoNodeLabelVerificationCode();
      case InfoNodeLabelRegistrationCode.id: // 1070012
        return const InfoNodeLabelRegistrationCode();
      case InfoNodeLabelLoginCode.id: // 1070013
        return const InfoNodeLabelLoginCode();
      case InfoNodeLabelLoginAndLinkCredential.id: // 1070014
        return const InfoNodeLabelLoginAndLinkCredential();

      // Verification (1080000-1080099)
      case InfoSelfServiceVerification.id: // 1080000
        return const InfoSelfServiceVerification();
      case InfoSelfServiceVerificationEmailSent.id: // 1080001
        return const InfoSelfServiceVerificationEmailSent();
      case InfoSelfServiceVerificationSuccessful.id: // 1080002
        return const InfoSelfServiceVerificationSuccessful();
      case InfoSelfServiceVerificationEmailWithCodeSent.id: // 1080003
        return const InfoSelfServiceVerificationEmailWithCodeSent();

      // Validation Error (4000000-4000099)
      case ErrorValidation.id: // 4000000
        return const ErrorValidation();
      case ErrorValidationGeneric.id: // 4000001
        final reason = contextParameters?['reason'];
        return ErrorValidationGeneric(reason: reason);
      case ErrorValidationRequired.id: // 4000002
        final property = contextParameters?['property'];
        return ErrorValidationRequired(property: property);
      case ErrorValidationMinLength.id: // 4000003
        return const ErrorValidationMinLength();
      case ErrorValidationInvalidFormat.id: // 4000004
        final pattern = contextParameters?['pattern'];
        return ErrorValidationInvalidFormat(pattern: pattern);
      case ErrorValidationPasswordPolicyViolation.id: // 4000005
        final reason = contextParameters?['reason'];
        return ErrorValidationPasswordPolicyViolation(reason: reason);
      case ErrorValidationInvalidCredentials.id: // 4000006
        return const ErrorValidationInvalidCredentials();
      case ErrorValidationDuplicateCredentials.id: // 4000007
        return const ErrorValidationDuplicateCredentials();
      case ErrorValidationTOTPVerifierWrong.id: // 4000008
        return const ErrorValidationTOTPVerifierWrong();
      case ErrorValidationIdentifierMissing.id: // 4000009
        return const ErrorValidationIdentifierMissing();
      case ErrorValidationAddressNotVerified.id: // 4000010
        return const ErrorValidationAddressNotVerified();
      case ErrorValidationNoTOTPDevice.id: // 4000011
        return const ErrorValidationNoTOTPDevice();
      case ErrorValidationLookupAlreadyUsed.id: // 4000012
        return const ErrorValidationLookupAlreadyUsed();
      case ErrorValidationNoWebAuthnDevice.id: // 4000013
        return const ErrorValidationNoWebAuthnDevice();
      case ErrorValidationNoLookup.id: // 4000014
        return const ErrorValidationNoLookup();
      case ErrorValidationSuchNoWebAuthnUser.id: // 4000015
        return const ErrorValidationSuchNoWebAuthnUser();
      case ErrorValidationLookupInvalid.id: // 4000016
        return const ErrorValidationLookupInvalid();
      case ErrorValidationMaxLength.id: // 4000017
        return const ErrorValidationMaxLength();
      case ErrorValidationMinimum.id: // 4000018
        return const ErrorValidationMinimum();
      case ErrorValidationExclusiveMinimum.id: // 4000019
        return const ErrorValidationExclusiveMinimum();
      case ErrorValidationMaximum.id: // 4000020
        return const ErrorValidationMaximum();
      case ErrorValidationExclusiveMaximum.id: // 4000021
        return const ErrorValidationExclusiveMaximum();
      case ErrorValidationMultipleOf.id: // 4000022
        return const ErrorValidationMultipleOf();
      case ErrorValidationMaxItems.id: // 4000023
        return const ErrorValidationMaxItems();
      case ErrorValidationMinItems.id: // 4000024
        return const ErrorValidationMinItems();
      case ErrorValidationUniqueItems.id: // 4000025
        return const ErrorValidationUniqueItems();
      case ErrorValidationWrongType.id: // 4000026
        final actualType = contextParameters?['actual_type'];
        return ErrorValidationWrongType(actualType: actualType);
      case ErrorValidationDuplicateCredentialsOnOIDCLink.id: // 4000027
        return const ErrorValidationDuplicateCredentialsOnOIDCLink();
      case ErrorValidationCredentialAlreadyUsedByAnotherAccount.id: // 4000028
        final credentialIdentifierHint =
            contextParameters?['credential_identifier_hint'];
        return ErrorValidationCredentialAlreadyUsedByAnotherAccount(
          credentialIdentifierHint: credentialIdentifierHint,
        );
      case ErrorValidationMustBeEqualToConstant.id: // 4000029
        final expected = contextParameters?['expected'];
        return ErrorValidationMustBeEqualToConstant(expected: expected);
      case ErrorValidationConstFailed.id: // 4000030
        return const ErrorValidationConstFailed();
      case ErrorValidationPasswordTooSimilarToIdentifier.id: // 4000031
        return const ErrorValidationPasswordTooSimilarToIdentifier();
      case ErrorValidationPasswordTooShort.id: // 4000032
        return const ErrorValidationPasswordTooShort();
      case ErrorValidationPasswordTooLong.id: // 4000033
        return const ErrorValidationPasswordTooLong();
      case ErrorValidationPasswordFoundInDataBreaches.id: // 4000034
        return const ErrorValidationPasswordFoundInDataBreaches();
      case ErrorValidationNoAccountOrNoCodeSignInSetUp.id: // 4000035
        return const ErrorValidationNoAccountOrNoCodeSignInSetUp();
      case ErrorValidationTraitsDontMatchPreviouslyAssociated.id: // 4000036
        return const ErrorValidationTraitsDontMatchPreviouslyAssociated();

      // Login Validation Error (4010000-4010099)
      case ErrorValidationLogin.id: // 4010000
        return const ErrorValidationLogin();
      case ErrorValidationLoginFlowExpired.id: // 4010001
        return const ErrorValidationLoginFlowExpired();
      case ErrorValidationLoginNoStrategyFound.id: // 4010002
        return const ErrorValidationLoginNoStrategyFound();
      case ErrorValidationRegistrationNoStrategyFound.id: // 4010003
        return const ErrorValidationRegistrationNoStrategyFound();
      case ErrorValidationSettingsNoStrategyFound.id: // 4010004
        return const ErrorValidationSettingsNoStrategyFound();
      case ErrorValidationRecoveryNoStrategyFound.id: // 4010005
        return const ErrorValidationRecoveryNoStrategyFound();
      case ErrorValidationVerificationNoStrategyFound.id: // 4010006
        return const ErrorValidationVerificationNoStrategyFound();
      case ErrorValidationLoginRequestAlreadyCompleted.id: // 4010007
        return const ErrorValidationLoginRequestAlreadyCompleted();
      case ErrorValidationLoginCodeInvalidOrAlreadyUsed.id: // 4010008
        return const ErrorValidationLoginCodeInvalidOrAlreadyUsed();
      case ErrorValidationLinkedCredentialsDoNotMatch.id: // 4010009
        return const ErrorValidationLinkedCredentialsDoNotMatch();

      // Registration Validation Error (4040000-4040099)
      case ErrorValidationRegistration.id: // 4040000
        return const ErrorValidationRegistration();
      case ErrorValidationRegistrationFlowExpired.id: // 4040001
        return const ErrorValidationRegistrationFlowExpired();
      case ErrorValidationRegistrationRequestAlreadyCompleted.id: // 4040002
        return const ErrorValidationRegistrationRequestAlreadyCompleted();
      case ErrorValidationRegistrationCodeInvalidOrAlreadyUsed.id: // 4040003
        return const ErrorValidationRegistrationCodeInvalidOrAlreadyUsed();

      // Settings Validation Error (4050000-4050099)
      case ErrorValidationSettings.id: // 4050000
        return const ErrorValidationSettings();
      case ErrorValidationSettingsFlowExpired.id: // 4050001
        return const ErrorValidationSettingsFlowExpired();

      // Recovery Validation Error (4060000-4060099)
      case ErrorValidationRecovery.id: // 4060000
        return const ErrorValidationRecovery();
      case ErrorValidationRecoveryRetrySuccess.id: // 4060001
        return const ErrorValidationRecoveryRetrySuccess();
      case ErrorValidationRecoveryStateFailure.id: // 4060002
        return const ErrorValidationRecoveryStateFailure();
      case ErrorValidationRecoveryMissingRecoveryToken.id: // 4060003
        return const ErrorValidationRecoveryMissingRecoveryToken();
      case ErrorValidationRecoveryTokenInvalidOrAlreadyUsed.id: // 4060004
        return const ErrorValidationRecoveryTokenInvalidOrAlreadyUsed();
      case ErrorValidationRecoveryFlowExpired.id: // 4060005
        return const ErrorValidationRecoveryFlowExpired();
      case ErrorValidationRecoveryCodeInvalidOrAlreadyUsed.id: // 4060006
        return const ErrorValidationRecoveryCodeInvalidOrAlreadyUsed();

      // Verification Validation Error (4070000-4070099)
      case ErrorValidationVerification.id: // 4070000
        return const ErrorValidationVerification();
      case ErrorValidationVerificationTokenInvalidOrAlreadyUsed.id: // 4070001
        return const ErrorValidationVerificationTokenInvalidOrAlreadyUsed();
      case ErrorValidationVerificationRetrySuccess.id: // 4070002
        return const ErrorValidationVerificationRetrySuccess();
      case ErrorValidationVerificationStateFailure.id: // 4070003
        return const ErrorValidationVerificationStateFailure();
      case ErrorValidationVerificationMissingVerificationToken.id: // 4070004
        return const ErrorValidationVerificationMissingVerificationToken();
      case ErrorValidationVerificationFlowExpired.id: // 4070005
        return const ErrorValidationVerificationFlowExpired();
      case ErrorValidationVerificationCodeInvalidOrAlreadyUsed.id: // 4070006
        return const ErrorValidationVerificationCodeInvalidOrAlreadyUsed();

      // System Error (5000000-5000099)
      case ErrorSystem.id: // 5000000
        return const ErrorSystem();
      case ErrorSystemGeneric.id: // 5000001
        return const ErrorSystemGeneric();

      default:
        return const ErrorSystemGeneric();
    }
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
  const InfoSelfServiceLoginWith._({
    required this.provider,
  });

  static InfoSelfServiceLoginWith? maybeFromParameters(
    ContextParameters? contextParameters,
  ) {
    if (contextParameters?['provider'] case final provider?) {
      return InfoSelfServiceLoginWith._(
        provider: provider,
      );
    }
    return null;
  }

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

extension on ContextParameters? {
  bool contextHasAllNonEmptyParameters(List<String> parameters) {
    if (this == null) {
      return false;
    }
    return parameters.every((parameter) =>
        this![parameter] != null && this![parameter]!.isNotEmpty);
  }
}

final class InfoSelfServiceSigningInWillLinkYourAccount extends KratosMessage {
  const InfoSelfServiceSigningInWillLinkYourAccount._({
    required this.duplicateIdentifier,
    required this.provider,
  });

  static InfoSelfServiceSigningInWillLinkYourAccount? maybeFromParameters(
    ContextParameters? contextParameters,
  ) {
    if (contextParameters.contextHasAllNonEmptyParameters([
      'duplicateIdentifier',
      'provider',
    ])) {
      return InfoSelfServiceSigningInWillLinkYourAccount._(
        duplicateIdentifier: contextParameters!['duplicateIdentifier']!,
        provider: contextParameters['provider']!,
      );
    }
    return null;
  }

  final String duplicateIdentifier;
  final String provider;

  static const id = 1010016;
}

final class InfoSelfServiceSignInAndLink extends KratosMessage {
  const InfoSelfServiceSignInAndLink();

  static const id = 1010017;
}

final class InfoSelfserviceSignInAndLinkCredential extends KratosMessage {
  const InfoSelfserviceSignInAndLinkCredential._({
    required this.provider,
  });

  static InfoSelfserviceSignInAndLinkCredential? maybeFromParameters(
    ContextParameters? contextParameters,
  ) {
    if (contextParameters?['provider'] case final provider?) {
      return InfoSelfserviceSignInAndLinkCredential._(
        provider: provider,
      );
    }
    return null;
  }

  final String provider;

  static const id = 1010018;
}

final class InfoSendCodeTo extends KratosMessage {
  const InfoSendCodeTo._({
    required this.address,
  });

  static InfoSendCodeTo? maybeFromParameters(
    ContextParameters? contextParameters,
  ) {
    if (contextParameters?['address'] case final address?) {
      return InfoSendCodeTo._(
        address: address,
      );
    }
    return null;
  }

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
  const InfoSelfServiceRegistrationWith({
    required this.provider,
  });

  factory InfoSelfServiceRegistrationWith.maybeFromParameters(
      ContextParameters? contextParemeters) {
    if (contextParemeters.contextHasAllNonEmptyParameters([
      'provider',
    ])) {
      return InfoSelfServiceRegistrationWith(
        provider: contextParemeters['provider'],
      );
    } else {
      return ErrorSystemGeneric();
    }
  }

  final String? provider;

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
  const InfoSelfServiceSettingsUpdateLinkOidc._({
    required this.provider,
  });

  static InfoSelfServiceSettingsUpdateLinkOidc? maybeFromParameters(
    ContextParameters? contextParameters,
  ) {
    if (contextParameters?['provider'] case final provider?) {
      return InfoSelfServiceSettingsUpdateLinkOidc._(
        provider: provider,
      );
    }
    return null;
  }

  final String provider;

  static const id = 1050002;
}

final class InfoSelfServiceSettingsUpdateUnlinkOidc extends KratosMessage {
  const InfoSelfServiceSettingsUpdateUnlinkOidc._({
    required this.provider,
  });

  static InfoSelfServiceSettingsUpdateUnlinkOidc? maybeFromParameters(
    ContextParameters? contextParameters,
  ) {
    if (contextParameters?['provider'] case final provider?) {
      return InfoSelfServiceSettingsUpdateUnlinkOidc._(
        provider: provider,
      );
    }
    return null;
  }

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
  const InfoSelfServiceSettingsTOTPSecret._({
    required this.secret,
  });

  static InfoSelfServiceSettingsTOTPSecret? maybeFromParameters(
    ContextParameters? contextParameters,
  ) {
    if (contextParameters?['secret'] case final secret?) {
      return InfoSelfServiceSettingsTOTPSecret._(
        secret: secret,
      );
    }
    return null;
  }

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
  const InfoSelfServiceSettingsLookupSecret._({
    required this.secret,
  });

  static InfoSelfServiceSettingsLookupSecret? maybeFromParameters(
    ContextParameters? contextParameters,
  ) {
    if (contextParameters?['secret'] case final secret?) {
      return InfoSelfServiceSettingsLookupSecret._(
        secret: secret,
      );
    }
    return null;
  }

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
  const InfoSelfServiceSettingsLookupSecretUsed();

  static const id = 1050014;
}

final class InfoSelfServiceSettingsLookupSecretList extends KratosMessage {
  const InfoSelfServiceSettingsLookupSecretList();

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
  const InfoSelfServiceSettingsRemoveWebAuthn._({
    required this.displayName,
  });

  static InfoSelfServiceSettingsRemoveWebAuthn? maybeFromParameters(
    ContextParameters? contextParameters,
  ) {
    if (contextParameters?['display_name'] case final displayName?) {
      return InfoSelfServiceSettingsRemoveWebAuthn._(
        displayName: displayName,
      );
    }
    return null;
  }

  final String displayName;

  static const id = 1050018;
}

final class InfoSelfServiceSettingsRemovePasskey extends KratosMessage {
  const InfoSelfServiceSettingsRemovePasskey._({
    required this.displayName,
  });

  static InfoSelfServiceSettingsRemovePasskey? maybeFromParameters(
    ContextParameters? contextParameters,
  ) {
    if (contextParameters?['display_name'] case final displayName?) {
      return InfoSelfServiceSettingsRemovePasskey._(
        displayName: displayName,
      );
    }
    return null;
  }

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
  const InfoNodeLabelGenerated._({
    required this.title,
  });

  static InfoNodeLabelGenerated? maybeFromParameters(
    ContextParameters? contextParameters,
  ) {
    if (contextParameters?['title'] case final title?) {
      return InfoNodeLabelGenerated._(
        title: title,
      );
    }
    return null;
  }

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
  const ErrorValidationGeneric._({
    required this.reason,
  });

  static ErrorValidationGeneric? maybeFromParameters(
    ContextParameters? contextParameters,
  ) {
    if (contextParameters?['reason'] case final reason?) {
      return ErrorValidationGeneric._(
        reason: reason,
      );
    }
    return null;
  }

  final String reason;

  static const id = 4000001;
}

final class ErrorValidationRequired extends KratosMessage {
  const ErrorValidationRequired({
    required this.property,
  });
  final String? property;

  static const id = 4000002;
}

final class ErrorValidationMinLength extends KratosMessage {
  const ErrorValidationMinLength();

  static const id = 4000003;
}

final class ErrorValidationInvalidFormat extends KratosMessage {
  const ErrorValidationInvalidFormat({
    required this.pattern,
  });
  final String? pattern;

  static const id = 4000004;
}

final class ErrorValidationPasswordPolicyViolation extends KratosMessage {
  const ErrorValidationPasswordPolicyViolation({
    required this.reason,
  });
  final String? reason;

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
  const ErrorValidationMaxLength();

  static const id = 4000017;
}

final class ErrorValidationMinimum extends KratosMessage {
  const ErrorValidationMinimum();

  static const id = 4000018;
}

final class ErrorValidationExclusiveMinimum extends KratosMessage {
  const ErrorValidationExclusiveMinimum();

  static const id = 4000019;
}

final class ErrorValidationMaximum extends KratosMessage {
  const ErrorValidationMaximum();

  static const id = 4000020;
}

final class ErrorValidationExclusiveMaximum extends KratosMessage {
  const ErrorValidationExclusiveMaximum();

  static const id = 4000021;
}

final class ErrorValidationMultipleOf extends KratosMessage {
  const ErrorValidationMultipleOf();

  static const id = 4000022;
}

final class ErrorValidationMaxItems extends KratosMessage {
  const ErrorValidationMaxItems();

  static const id = 4000023;
}

final class ErrorValidationMinItems extends KratosMessage {
  const ErrorValidationMinItems();

  static const id = 4000024;
}

final class ErrorValidationUniqueItems extends KratosMessage {
  const ErrorValidationUniqueItems();

  static const id = 4000025;
}

final class ErrorValidationWrongType extends KratosMessage {
  const ErrorValidationWrongType({
    required this.actualType,
  });
  final String? actualType;

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
  });
  final String? credentialIdentifierHint;

  static const id = 4000028;
  static const parameterNames = ['credential_identifier_hint'];
}

final class ErrorValidationMustBeEqualToConstant extends KratosMessage {
  const ErrorValidationMustBeEqualToConstant({
    required this.expected,
  });
  final String? expected;

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
  const ErrorValidationPasswordTooShort();

  static const id = 4000032;
}

final class ErrorValidationPasswordTooLong extends KratosMessage {
  const ErrorValidationPasswordTooLong();

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
  const ErrorValidationLoginFlowExpired();

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
  const ErrorValidationRegistrationFlowExpired();

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
  const ErrorValidationSettingsFlowExpired();

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
  const ErrorValidationRecoveryFlowExpired();

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
  const ErrorValidationVerificationFlowExpired();

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
