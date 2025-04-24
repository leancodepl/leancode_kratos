import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:leancode_kratos_client/src/json_typedef.dart';

part 'logout_flow_dto.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class LogoutFlowDto with EquatableMixin {
  const LogoutFlowDto({
    required this.logoutUrl,
    required this.logoutToken,
  });

  factory LogoutFlowDto.fromJson(Json json) =>
      _$LogoutFlowDtoFromJson(json);

  final String logoutUrl;
  final String logoutToken;

  Json toJson() => _$LogoutFlowDtoToJson(this);

  @override
  List<Object?> get props => [logoutUrl, logoutToken];
}
