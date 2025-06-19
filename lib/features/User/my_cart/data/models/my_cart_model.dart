import 'package:json_annotation/json_annotation.dart';

import '../../../category/data/models/product_model.dart';
part 'my_cart_model.g.dart';

@JsonSerializable()
class MyCartModel {
  String? sId;
  List<Map<dynamic,dynamic>>? cartItems;
  String? user;
  String? createdAt;
  String? updatedAt;
  int? iV;
  double? totalPrice;

  MyCartModel(
      {this.sId,
      this.cartItems,
      this.user,
      this.createdAt,
      this.updatedAt,
      this.iV,
      this.totalPrice});

  factory MyCartModel.fromJson(Map<String, dynamic> json) =>
      _$MyCartModelFromJson(json);
}

// @JsonSerializable()
// class CartItems {
//   ProductModel? product;
//   int? quantity;
//   double? price;
//   String? sId;

//   CartItems({this.product, this.quantity, this.price, this.sId});
//   factory CartItems.fromJson(Map<String, dynamic> json) =>
//       _$CartItemsFromJson(json);
// }
