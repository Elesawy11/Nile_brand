// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_cart_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

MyCartModel _$MyCartModelFromJson(Map<String, dynamic> json) => MyCartModel(
      sId: json['sId'] as String?,
      cartItems: (json['cartItems'] as List<dynamic>?)
          ?.map((e) => e as Map<String, dynamic>)
          .toList(),
      user: json['user'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      iV: (json['iV'] as num?)?.toInt(),
      totalPrice: (json['totalPrice'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$MyCartModelToJson(MyCartModel instance) =>
    <String, dynamic>{
      'sId': instance.sId,
      'cartItems': instance.cartItems,
      'user': instance.user,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'iV': instance.iV,
      'totalPrice': instance.totalPrice,
    };
