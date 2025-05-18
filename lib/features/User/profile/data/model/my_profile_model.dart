import 'package:json_annotation/json_annotation.dart';
part 'my_profile_model.g.dart';
@JsonSerializable()
class MyProfileModel {
  String? sId;
  String? name;
  String? email;
  String? password;
  String? userImage;
  String? role;
  bool? active;
  List<dynamic>? wishlist;
  String? createdAt;
  String? updatedAt;
  int? iV;

  MyProfileModel(
      {this.sId,
      this.name,
      this.email,
      this.password,
      this.userImage,
      this.role,
      this.active,
      this.wishlist,
      this.createdAt,
      this.updatedAt,
      this.iV});

  factory MyProfileModel.fromJson(Map<String, dynamic> json) =>
      _$MyProfileModelFromJson(json);
}
