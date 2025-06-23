import 'package:json_annotation/json_annotation.dart';
part 'feedback_model.g.dart';

@JsonSerializable()
class FeedbackModel {
  String? comment;
  int? rating;
  String? user;
  String? sId;
  String? createdAt;
  String? updatedAt;
  int? iV;

  FeedbackModel(
      {this.comment,
      this.rating,
      this.user,
      this.sId,
      this.createdAt,
      this.updatedAt,
      this.iV});

  factory FeedbackModel.fromJson(Map<String, dynamic> json) =>
      _$FeedbackModelFromJson(json);
}
