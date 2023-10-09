sealed class UpdatePassword {}

class UpdateSuccess extends UpdatePassword {}

class UpdateRequiresReauthorization extends UpdatePassword {}

class UpdateFailure extends UpdatePassword {}
