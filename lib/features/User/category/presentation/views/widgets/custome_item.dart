import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/User/category/data/models/product_model.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/content_postion.dart';

class CustomeItem extends StatelessWidget {
  const CustomeItem({super.key, required this.product});
  final ProductModel product;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: SizedBox(
        height: 120.h,
        child: Container(
          padding: EdgeInsets.only(right: 5.w, left: 5.w),
          margin: EdgeInsets.only(top: 5.h, right: 5.w, left: 5.w),
          color: const Color(0xffD9D9D9),
          child: Stack(
            children: [
              ContentPosition(
                bottom: 37.h,
                child: Image.network(
                  product.images!.first,
                  width: 90.w,
                  height: 50.h,
                ),
              ),
              ContentPosition(
                
                  left: 75.w,
                  top: 60.h,
                  child: InkWell(
                      onTap: () {
                        context.pushNamed(Routes.ptoductDetails);
                      },
                      child: Image.asset(
                        "assets/images/favorite_icon.png",
                        width: 10.w,
                        height: 10.h,
                      ))),

              ContentPosition(
                  top: 130.spMax,
                  left: 4.w,
                  child: Container(
                    margin: EdgeInsets.only(top: 7.h),
                    child: Text(
                      product.name ?? 'Not Found',
                      style: Styles.font14W400,
                    ),
                  )),
              ContentPosition(
                top: 145.spMax,
                left: 5.w,
                right: 5.w,
                child: SizedBox(
                  width: 100.w,
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
                          width: 20.w,
                          height: 14.h,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
