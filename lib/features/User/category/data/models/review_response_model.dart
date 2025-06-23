import 'package:json_annotation/json_annotation.dart';

part 'review_response_model.g.dart';
@JsonSerializable()

class ReviewResponseModel {
  String? comment;
  int? rating;
  String? user;
  String? product;
  String? sId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  ReviewResponseModel(
      {this.comment,
      this.rating,
      this.user,
      this.product,
      this.sId,
      this.createdAt,
      this.updatedAt,
      this.iV});

 factory ReviewResponseModel.fromJson(Map<String,dynamic>json) => _$ReviewResponseModelFromJson(json);

  /// Connect the generated [_$PersonToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$ReviewResponseModelToJson(this);
  
}
