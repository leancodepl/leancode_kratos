## Email Verification
---
After registration, Kratos requires verifying the email address before the account is fully activated.

To implement verification:

After registration is complete, call `getVerificationFlow` on the client:

```dart
final flow = await client.getVerificationFlow();
```

This will initialize the verification process and return a **VerificationFlow** object.

Send **code** obtained from e-mail via:

```dart
final result = await client.verifyAccount(flowId: flowId, code: code)
```