# Login

---

## Login with password

Display the login UI.

When the user submits credentials, call `loginWithPassword` with email and password.

```dart
final result = await kratosClient.loginWithPassword(email, password);
```

The KratosClient will handle the login request. If successful, the session credentials are persisted and the user is logged in.

For future requests, the persisted session can be used to authenticate the user.

## Login with passkey

Login with a passkey do not requires only a passkey that is associated with the user account.

Email ot other user credentials are not required.

```dart
await kratosClient.loginWithPasskey(
  passkeyCallback: (options) async {
    return passkeyCredentialManager.request(options);
  },
);
```
