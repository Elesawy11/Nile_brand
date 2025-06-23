import 'package:json_annotation/json_annotation.dart';

part 'system_user_model.g.dart';

@JsonSerializable()
class UserModel {
  @JsonKey(name: '_id')
  final String id;
  final String name;
  final String email;

  final String? userImage;
  final String role;
  final bool active;

  UserModel({
    required this.id,
    required this.name,
    required this.email,
    this.userImage,
    required this.role,
    required this.active,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);

  Map<String, dynamic> toJson() => _$UserModelToJson(this);
}
