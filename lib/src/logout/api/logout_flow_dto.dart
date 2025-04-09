import 'package:freezed_annotation/freezed_annotation.dart';

part 'logout_flow_dto.freezed.dart';
part 'logout_flow_dto.g.dart';

@freezed
class LogoutFlowDto with _$LogoutFlowDto {
  const factory LogoutFlowDto({
    required String logoutUrl,
    required String logoutToken,
  }) = _LogoutFlowDto;

  factory LogoutFlowDto.fromJson(Map<String, dynamic> json) =>
      _$LogoutFlowDtoFromJson(json);
}
