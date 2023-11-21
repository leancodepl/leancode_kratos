## User Profile

Kratos stores a user profile with custom traits and metadata.

---

### Get Profile

To fetch the user's profile:

```dart
final profileResult = await client.getSettingsFlow();
```

This returns profile data including:

- `traits` - Map of custom traits
- `flowId` - Settings flow ID
- `userId` - User ID

---

### Update Profile

To update the user's traits:

Pass the list of trait names and values to update.

Use flowID from **getSettingsFlow**

```dart
final traits = [
  ProfileTrait(name: 'name', value: 'Jan'),
  // other traits
];

final result = await client.updateTraits(
  traits: traits,
  flowId: profile.flowId, 
);
```

---

### Change Password

To change the user's password:

Use flowID from **getSettingsFlow**

```dart
final result = await client.updatePassword(
  password: newPassword,
  flowId: flowId,
);
```