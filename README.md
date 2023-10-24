# KratosClient

The KratosClient provides an API client for interacting with an Ory Kratos server.

## Usage

To create a client:

```dart
final client = KratosClient(
  baseUri: Uri.parse('https://kratos.example.com'), 
  browserCallback: (url) async {
    // open browser and return code
  },
);
```

The main APIs available are:

### Registration

- `registerWithPassword` - Register using email and password
- `registerWithOidc` - Register using OpenID Connect provider

### Login

- `loginWithPassword` - Login with email and password

### Verification

- `getVerificationFlow` - Get verification flow
- `verifyAccount` - Complete email verification

### Recovery

- `getRecoveryFlow` - Get account recovery flow
- `sendEmailRecoveryFlow` - Initiate email account recovery
- `sendCodeRecoveryFlow` - Submit recovery code

### Profile

- `getSettingsFlow` - Get user profile
- `updateTraits` - Update user profile traits
- `updatePassword` - Update user password

### Other

- `logout` - Logout user
- `refreshSessionToken` - Refresh session token


## Credentials Storage

The client handles persisting credentials like the session token. By default it uses `FlutterSecureCredentialsStorage` but you can pass a custom `CredentialsStorage` on construction.

## Error Handling

Most methods return a union type for success or failure responses. See code for details on specific error types.

## HTTP Client

The `http.Client` used to make requests can be customized by passing your own on construction.

## Logging

Debug logging is printed using the `logging` package.
