# Login

---

## Login with password:

Display the login UI.

When the user submits credentials, call `loginWithPassword` with email and password.

```dart
final result = await kratosClient.loginWithPassword(email, password);
```

The KratosClient will handle the login request. If successful, the session credentials are persisted and the user is logged in.

For future requests, the persisted session can be used to authenticate the user.