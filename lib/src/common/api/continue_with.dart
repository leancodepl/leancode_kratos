import 'package:freezed_annotation/freezed_annotation.dart';

import 'flow.dart';

part 'continue_with.freezed.dart';
part 'continue_with.g.dart';

@freezed
class ContinueWith with _$ContinueWith {
  const factory ContinueWith({
    String? action,
    Flow? flow,
  }) = _ContinueWith;

  factory ContinueWith.fromJson(Map<String, dynamic> json) =>
      _$ContinueWithFromJson(json);
}
