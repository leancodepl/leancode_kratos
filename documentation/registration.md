# Registration

---

## Registration with password

1. Display the registration UI to the user in the app.
  
2. When the user submits the registration form, call `registerWithPassword` on the client, passing the user password and map of traits.

## Registration with passkey

1. Display the registration UI to the user in the app.
2. When the user submits the registration form, call `registerWithProfile` first.

    ```dart
    final registrationResult = await kratosClient.registerWithProfile(
        traits: traits,
    );
    ```

3. Create a public key credential using a passkey manager (not included in this package).

    ```dart
    final passkeyResult = await passkeyCredentialManager.create(
        registrationResult.flowInfo.passkeyCreationOptions
    );
    ```

4. Finish the registration with `registerWithPasskey` method

    ```dart
    final passkeyResult = await kratosClient.registerWithPasskey(
      flowInfo: registrationResult.flowInfo,
      credentialJson: passkeyResult.publicKeyJson,
    );
    ```
