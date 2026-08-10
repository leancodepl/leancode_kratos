import 'package:collection/collection.dart';

/// A stage of a Kratos verification flow.
enum VerificationFlowState {
  chooseMethod('choose_method'),
  sentEmail('sent_email'),
  passedChallenge('passed_challenge');

  const VerificationFlowState(this.apiState);

  /// The value Kratos uses in the flow's `state` field.
  final String apiState;

  /// The state a flow reports, or `null` when it is one this package does not
  /// know about.
  static VerificationFlowState? fromApiState(String state) =>
      VerificationFlowState.values.firstWhereOrNull(
        (flowState) => flowState.apiState == state,
      );
}
