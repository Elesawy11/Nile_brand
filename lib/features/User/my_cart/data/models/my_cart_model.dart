import 'package:json_annotation/json_annotation.dart';
import 'package:nile_brand/features/User/my_cart/data/models/cart_product_model.dart';

import '../../../category/data/models/product_model.dart';
part 'my_cart_model.g.dart';

@JsonSerializable()
class MyCartModel {
  String? sId;
  List<CartProductModel>? cartItems;
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
