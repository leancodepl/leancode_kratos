import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
part 'logout_flow_dto.g.dart';

@JsonSerializable()
class LogoutFlowDto with EquatableMixin {
  const LogoutFlowDto({
    required this.logoutUrl,
    required this.logoutToken,
  });

  factory LogoutFlowDto.fromJson(Map<String, dynamic> json) =>
      _$LogoutFlowDtoFromJson(json);

  final String logoutUrl;
  final String logoutToken;

  Map<String, dynamic> toJson() => _$LogoutFlowDtoToJson(this);

  @override
  List<Object?> get props => [logoutUrl, logoutToken];
}
