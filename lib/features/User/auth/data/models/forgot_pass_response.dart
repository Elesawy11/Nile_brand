import 'package:json_annotation/json_annotation.dart';
part 'forgot_pass_response.g.dart';
@JsonSerializable()
class ForgotPassResponse {
  String? message;
  String? resetToken;

  ForgotPassResponse({this.message, this.resetToken});

  factory ForgotPassResponse.fromJson(Map<String, dynamic> json) =>
      _$ForgotPassResponseFromJson(json);
}