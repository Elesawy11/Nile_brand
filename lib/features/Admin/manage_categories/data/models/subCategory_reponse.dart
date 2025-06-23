import 'package:json_annotation/json_annotation.dart';
part "subCategory_reponse.g.dart";
@JsonSerializable()
class SubCategoryResponse {
  @JsonKey(name: '_id')
  final String? id;

  final String? name;

  // category is a String ID, not an object
  final String? category;

  final String? createdAt;
  final String? updatedAt;

  SubCategoryResponse({
    this.id,
    this.name,
    this.category,
    this.createdAt,
    this.updatedAt,
  });

  factory  SubCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$SubCategoryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SubCategoryResponseToJson(this);
}
