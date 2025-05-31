// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewModel _$ReviewModelFromJson(Map<String, dynamic> json) => ReviewModel(
      sId: json['sId'] as String?,
      comment: json['comment'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      user: json['user'] == null
          ? null
          : MyProfileModel.fromJson(json['user'] as Map<String, dynamic>),
      product: json['product'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$ReviewModelToJson(ReviewModel instance) =>
    <String, dynamic>{
      'sId': instance.sId,
      'comment': instance.comment,
      'rating': instance.rating,
      'user': instance.user,
      'product': instance.product,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
    };
