import 'package:freezed_annotation/freezed_annotation.dart';

part 'flow.freezed.dart';
part 'flow.g.dart';

@freezed
class Flow with _$Flow {
  const factory Flow({
    String? id,
    String? verifiableAddress,
  }) = _Flow;

  factory Flow.fromJson(Map<String, dynamic> json) => _$FlowFromJson(json);
}