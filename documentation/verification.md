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

A verification deep link carries only the flow id and the code. To recover the
rest of an existing flow — most importantly the e-mail address the code was
sent to (e.g. to offer a "resend code" action after a cold start) — call:

```dart
final result = await client.getVerificationFlowById(flowId);
```

This returns a **GetVerificationFlowResult**:

- `GetVerificationFlowSuccessResult` — carries `flowId`, the flow `state`, and
  `email` (available once the flow has reached the `sentEmail` state),
- `GetVerificationFlowNotFoundResult` — the flow does not exist,
- `GetVerificationFlowExpiredResult` — the flow has expired,
- `GetVerificationFlowUnknownErrorResult` — any other failure.