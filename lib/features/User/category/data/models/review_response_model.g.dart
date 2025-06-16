// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'review_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ReviewResponseModel _$ReviewResponseModelFromJson(Map<String, dynamic> json) =>
    ReviewResponseModel(
      comment: json['comment'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      user: json['user'] as String?,
      product: json['product'] as String?,
      sId: json['sId'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      iV: (json['iV'] as num?)?.toInt(),
    );

Map<String, dynamic> _$ReviewResponseModelToJson(
        ReviewResponseModel instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'rating': instance.rating,
      'user': instance.user,
      'product': instance.product,
      'sId': instance.sId,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'iV': instance.iV,
    };
