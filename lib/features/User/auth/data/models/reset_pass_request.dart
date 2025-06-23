import 'package:json_annotation/json_annotation.dart';
part 'reset_pass_request.g.dart';

@JsonSerializable()
class ResetPassRequest {
  final String? password;
  final String? confirmPassword;
  ResetPassRequest({
    this.password,
    this.confirmPassword,
  });

  Map<String, dynamic> toJson() => _$ResetPassRequestToJson(this);
}
