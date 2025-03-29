import 'package:json_annotation/json_annotation.dart';
part 'signup_request_body.g.dart';

@JsonSerializable()
class SignupRequestBody {
  final String name;
  final String email;
  final String password;
  final String confirmPassword;
  final String role;

  SignupRequestBody(
    this.name,
    this.email,
    this.password,
    this.confirmPassword,
    this.role,
  );

  Map<String, dynamic> toJson() => _$SignupRequestBodyToJson(this);
}
