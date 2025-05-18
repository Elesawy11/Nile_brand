// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FeedbackModel _$FeedbackModelFromJson(Map<String, dynamic> json) =>
    FeedbackModel(
      comment: json['comment'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      user: json['user'] as String?,
      sId: json['sId'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      iV: (json['iV'] as num?)?.toInt(),
    );

Map<String, dynamic> _$FeedbackModelToJson(FeedbackModel instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'rating': instance.rating,
      'user': instance.user,
      'sId': instance.sId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'iV': instance.iV,
    };
