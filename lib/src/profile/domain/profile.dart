import 'package:leancode_kratos_client/src/profile/domain/trait.dart';

sealed class Profile {}

class ErrorGettingProfile extends Profile {}

class ProfileData extends Profile {
  ProfileData({required this.flowId, required this.traits, required this.userId});

  final String flowId;
  final List<ProfileTrait> traits;
  final String userId;
}
