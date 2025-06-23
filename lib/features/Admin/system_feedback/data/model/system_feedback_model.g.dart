// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'system_feedback_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SystemFeedbackModel _$SystemFeedbackModelFromJson(Map<String, dynamic> json) =>
    SystemFeedbackModel(
      id: json['_id'] as String?,
      comment: json['comment'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SystemFeedbackModelToJson(
        SystemFeedbackModel instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'rating': instance.rating,
      'user': instance.user,
      '_id': instance.id,
    };

User _$UserFromJson(Map<String, dynamic> json) => User(
      id: json['_id'] as String,
      name: json['name'] as String,
      userImage: json['userImage'] as String,
    );

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      '_id': instance.id,
      'name': instance.name,
      'userImage': instance.userImage,
    };
