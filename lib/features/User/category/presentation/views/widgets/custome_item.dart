import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/User/category/data/models/product_model.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';

class CustomeItem extends StatelessWidget {
  const CustomeItem({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(Routes.productDetails);
      },
      child: Container(
        margin: EdgeInsets.only(top: 5.h, right: 5.w, left: 5.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color: const Color(0xffD9D9D9),
        ),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            isValidUri(
              product.images?.first ?? '',
            )
                ? Image.network(
                    product.images!.first,
                    fit: BoxFit.fill,
                  )
                : SizedBox(
                    width: 60.r,
                    height: 60.r,
                    child: Image.asset(
                      Assets.imagesNoImage,
                      width: 20.r,
                      height: 20.r,
                      // fit: BoxFit.fill,
                    ),
                  ),
            12.vs,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 86.w,
                    margin: EdgeInsets.only(top: 7.h),
                    child: Text(
                      product.name ?? 'Not Found',
                      style: Styles.font14W400,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                  ),
                  Image.asset(
                    "assets/images/favorite_icon.png",
                    width: 18.r,
                    height: 18.r,
                  ),
                ],
              ),
            ),
            12.vs,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${product.price} L.E',
                    style: Styles.font14W500,
                  ),
                  InkWell(
                    onTap: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          backgroundColor: Colors.white,
                          content: Text(
                            "Added to cart",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      );
                    },
                    child: Image.asset(
                      "assets/images/cartIcon.png",
                      width: 18.r,
                      height: 18.r,
                    ),
                  ),
                ],
              ),
            ),
            12.vs,
          ],
        ),
      ),
    );
  }

  bool isValidUri(String uri) {
    try {
      final parsed = Uri.parse(uri);
      return parsed.isAbsolute && (parsed.hasScheme);
    } catch (e) {
      return false;
    }
  }
}
