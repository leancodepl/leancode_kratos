# Settings

## Add a new passkey

```dart
await client.addPasskey(
  passkeyCallback: (options) async {
    return passkeyCredentialManager.register(options);
  },
);

```

## Get all the passkeys

Get all the passkeys linked to a user account

```dart
final passkeys = await client.getPasskeys();
```

## Remove a passkey

To remove a passkey, you need to know the passkey ID. You can get the passkey ID by calling `getPasskeys` method.

```dart
await client.removePasskey(passkeyId: passkeyId);
```
