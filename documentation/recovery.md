# Account recovery

---

## Initialize Recovery Flow

Get a recovery flow ID to start the process:

```dart
final result = await client.getRecoveryFlow();
```

### Send Recovery Email

Initiate email-based recovery:

```dart
final result = await client.sendEmailRecoveryFlow(flowId: result.flowId, email: userEmail,);
```

### Submit Recovery Code

Send recovery code using flowId from previous step:

```dart
final result = await client.sendCodeRecoveryFlow(
  flowId: flowId, 
  code: code
);
```

### Update Password

Finally, submit the new password using flowID from Submit Recovery Code step:

```dart
final result = await client.updatePassword(flowId: flowId, newPassword: newPassword,);
```

``