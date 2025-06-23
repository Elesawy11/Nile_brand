import 'package:json_annotation/json_annotation.dart';

part "system_feedback_model.g.dart";

@JsonSerializable()
class SystemFeedbackModel {
  String? comment;
  int? rating;
  User? user;
  @JsonKey(name: "_id")
  String? id;
  SystemFeedbackModel({
    required this.id,
    required this.comment,
    required this.rating,
    required this.user,
  });

  factory SystemFeedbackModel.fromJson(Map<String, dynamic> json) =>
      _$SystemFeedbackModelFromJson(json);

  Map<String, dynamic> toJson() => _$SystemFeedbackModelToJson(this);
}

@JsonSerializable()
class User {
  @JsonKey(name: '_id')
  final String id;

  final String name;
  final String userImage;

  User({
    required this.id,
    required this.name,
    required this.userImage,
  });

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
