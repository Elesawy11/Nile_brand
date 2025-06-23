import 'package:json_annotation/json_annotation.dart';
import 'package:nile_brand/features/User/profile/data/model/my_profile_model.dart';
part 'review_model.g.dart';

@JsonSerializable()
class ReviewModel {
  String? sId;
  String? comment;
  int? rating;
  MyProfileModel? user;
  // User? user;
  String? product;
  String? createdAt;
  String? updatedAt;

  ReviewModel(
      {this.sId,
      this.comment,
      this.rating,
      this.user,
      this.product,
      this.createdAt,
      this.updatedAt});

  factory ReviewModel.fromJson(Map<String, dynamic> json) =>
      _$ReviewModelFromJson(json);
  Map<String, dynamic> toJson() => _$ReviewModelToJson(this);
}
