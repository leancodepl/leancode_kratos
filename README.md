# KratosClient

The KratosClient provides an API client for interacting with an Ory Kratos server.

## Usage

### To create a client:

```dart
final client = KratosClient(
  baseUri: Uri.parse('https://kratos.example.com'), 
  browserCallback: (url) async {
    // open browser and return code
  },
);
```
## Features
### The main available APIs are:

### [Registration](documentation/registration.md)

- `registerWithPassword` - Register using email and password
- `registerWithOidc` - Register using OpenID Connect provider

### [Login](documentation/login.md)

- `loginWithPassword` - Login with email and password

### [Verification](documentation/verification.md)

- `getVerificationFlow` - Get verification flow
- `verifyAccount` - Complete email verification

### [Recovery](documentation/recovery.md)

- `getRecoveryFlow` - Get account recovery flow
- `sendEmailRecoveryFlow` - Initiate email account recovery
- `sendCodeRecoveryFlow` - Submit recovery code

### [Profile](documentation/profile.md)

- `getSettingsFlow` - Get user profile
- `updateTraits` - Update user profile traits
- `updatePassword` - Update user password

### [Other](documentation/others.md)

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
