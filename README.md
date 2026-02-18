<a href="https://leancode.co/?utm_source=github.com&utm_medium=referral&utm_campaign=leancode-kratos" align="center">
  <img alt="leancode_kratos" src="documentation/images/banner.png" />
</a>

# KratosClient

The KratosClient provides an API client for interacting with an Ory Kratos server.

## Usage

### To create a client

```dart
final client = KratosClient(
  baseUri: Uri.parse('https://kratos.example.com'), 
  browserCallback: (url) async {
    // open browser and return code
  },
);
```

## Features

### The main available APIs are

### [Registration](documentation/registration.md)

- `registerWithPassword` - Register using email and password
- `registerWithOidc` - Register using OpenID Connect provider
- `registerWithPasskey` - Register using a passkey

### [Login](documentation/login.md)

- `loginWithPassword` - Login with email and password
- `loginWithPasskey` - Login with a passkey

### [Verification](documentation/verification.md)

- `getVerificationFlow` - Get verification flow
- `verifyAccount` - Complete email verification

### [Recovery](documentation/recovery.md)

- `getRecoveryFlow` - Get account recovery flow
- `sendEmailRecoveryFlow` - Initiate email account recovery
- `sendCodeRecoveryFlow` - Submit recovery code

### [Profile](documentation/profile.md)

- `getUserProfile` - Get user profile
- `updateTraits` - Update user profile traits
- `updatePassword` - Update user password

### [Settings](documentation/settings.md)

- `addPasskey` - Add a new passkey
- `removePasskey` - Remove a linked passkey
- `getPasskeys` - Get all linked passkeys

### [Other](documentation/others.md)

- `logout` - Logout user
- `refreshSessionToken` - Refresh session token
- `isSessionValid` - Check if session is valid
- `getSession` - Get session

## Credentials Storage

The client handles persisting credentials like the session token. By default it uses `FlutterSecureCredentialsStorage` but you can pass a custom `CredentialsStorage` on construction.

## Error Handling

Most methods return a union type for success or failure responses. See code for details on specific error types.

## HTTP Client

The `http.Client` used to make requests can be customized by passing your own on construction.

## Logging

Debug logging is printed using the `logging` package.

## Browser vs Api flows

In Browser flows session is stored in http-only cookie and `CredentialsStorage` is not used.

In Api flows token is stored in `CredentialsStorage`.

---

## 🛠️ Maintained by LeanCode

<div align="center">
  <a href="https://leancode.co/?utm_source=github.com&utm_medium=referral&utm_campaign=leancode-kratos">
    <img src="https://leancodepublic.blob.core.windows.net/public/wide.png" alt="LeanCode Logo" height="100" />
  </a>
</div>

This package is built with 💙 by **[LeanCode](https://leancode.co?utm_source=github.com&utm_medium=referral&utm_campaign=leancode-kratos)**.
We are **top-tier experts** focused on Flutter Enterprise solutions.

### Why LeanCode?

- **Creators of [Patrol](https://patrol.leancode.co/?utm_source=github.com&utm_medium=referral&utm_campaign=leancode-kratos)** – the next-gen testing framework for Flutter.

- **Production-Ready** – We use this package in apps with millions of users.
- **Full-Cycle Product Development** – We take your product from scratch to long-term maintenance.

<div align="center">
  <br />

  **Need help with your Flutter project?**

  [**👉 Hire our team**](https://leancode.co/get-estimate?utm_source=github.com&utm_medium=referral&utm_campaign=leancode-kratos)
  &nbsp;&nbsp;•&nbsp;&nbsp;
  [Check our other packages](https://pub.dev/packages?q=publisher%3Aleancode.co&sort=downloads)

</div>
