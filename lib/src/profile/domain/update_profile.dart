sealed class UpdateProfile {}

class ProfileUpdateSuccess extends UpdateProfile {}

class ProfileUpdateRequiresReauthorization extends UpdateProfile {}

class ProfileUpdateFailure extends UpdateProfile {}

class ProfileNeedsVerification extends UpdateProfile {}
