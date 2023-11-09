import 'package:leancode_kratos_client/leancode_kratos_client.dart';

sealed class UpdatePassword {}

class UpdateSuccess extends UpdatePassword {}

class UpdateRequiresReauthorization extends UpdatePassword {}

class UpdateFailure extends UpdatePassword {
  UpdateFailure({required this.error});

  final KratosError? error;
}
