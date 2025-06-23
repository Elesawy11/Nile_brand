// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_product_to_cart_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddProductToCartResponseModel _$AddProductToCartResponseModelFromJson(
        Map<String, dynamic> json) =>
    AddProductToCartResponseModel(
      length: (json['length'] as num?)?.toInt(),
      data: json['data'] == null
          ? null
          : Data.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddProductToCartResponseModelToJson(
        AddProductToCartResponseModel instance) =>
    <String, dynamic>{
      'length': instance.length,
      'data': instance.data,
    };

Data _$DataFromJson(Map<String, dynamic> json) => Data(
      sId: json['sId'] as String?,
      cartItems: (json['cartItems'] as List<dynamic>?)
          ?.map((e) => CartItems.fromJson(e as Map<String, dynamic>))
          .toList(),
      user: json['user'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      iV: (json['iV'] as num?)?.toInt(),
      totalPrice: (json['totalPrice'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$DataToJson(Data instance) => <String, dynamic>{
      'sId': instance.sId,
      'cartItems': instance.cartItems,
      'user': instance.user,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'iV': instance.iV,
      'totalPrice': instance.totalPrice,
    };

CartItems _$CartItemsFromJson(Map<String, dynamic> json) => CartItems(
      product: json['product'] as String?,
      quantity: (json['quantity'] as num?)?.toInt(),
      price: (json['price'] as num?)?.toDouble(),
      sId: json['sId'] as String?,
    );

Map<String, dynamic> _$CartItemsToJson(CartItems instance) => <String, dynamic>{
      'product': instance.product,
      'quantity': instance.quantity,
      'price': instance.price,
      'sId': instance.sId,
    };
