import 'package:json_annotation/json_annotation.dart';

part 'add_product_to_cart_response_model.g.dart';

@JsonSerializable()
class AddProductToCartResponseModel {
  int? length;
  Data? data;

  AddProductToCartResponseModel({this.length, this.data});
  factory AddProductToCartResponseModel.fromJson(Map<String, dynamic> json) => _$AddProductToCartResponseModelFromJson(json);
}

@JsonSerializable()
class Data {
  String? sId;
  List<CartItems>? cartItems;
  String? user;
  String? createdAt;
  String? updatedAt;
  int? iV;
  double? totalPrice;

  Data(
      {this.sId,
      this.cartItems,
      this.user,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.totalPrice});
  factory Data.fromJson(Map<String, dynamic> json) => _$DataFromJson(json);

}

@JsonSerializable()
class CartItems {
  String? product;
  int? quantity;
  double? price;
  String? sId;

  CartItems({this.product, this.quantity, this.price, this.sId});
  factory CartItems.fromJson(Map<String, dynamic> json) => _$CartItemsFromJson(json);

}
