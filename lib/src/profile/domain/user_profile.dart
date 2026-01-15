import 'package:leancode_kratos_client/src/profile/domain/trait.dart';

sealed class UserProfile {}

class UserProfileData extends UserProfile {
  UserProfileData({
    required this.traits,
    required this.userId,
    required this.metadataPublic,
  });

  final String userId;
  final List<ProfileTrait> traits;
  final dynamic metadataPublic;
}

class ErrorGettingUserProfile extends UserProfile {}
