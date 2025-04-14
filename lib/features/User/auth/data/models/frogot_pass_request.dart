import 'package:json_annotation/json_annotation.dart';
part 'frogot_pass_request.g.dart';

@JsonSerializable()
class FrogotPassRequest {
  final String email;

  FrogotPassRequest({required this.email});

  Map<String, dynamic> toJson() => _$FrogotPassRequestToJson(this);
}
