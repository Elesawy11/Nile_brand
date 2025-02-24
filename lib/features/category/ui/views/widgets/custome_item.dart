import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:nile_brand/core/utils/styles.dart';

class CustomeItem extends StatelessWidget {
  // added at integration with api
  // final String title;
  // final String price;
  // final String image_url;

  const CustomeItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        
      },
      child: SizedBox(
        height: 120.h,
        child: Container(
          padding: EdgeInsets.only( right: 5.w, left: 5.w),
          margin: EdgeInsets.only(top: 5.h, right: 5.w, left: 5.w),
          color: const Color(0xffD9D9D9),
          child: Stack(
            children: [
              ContentPosition(
                  
      
                  bottom: 37.h,
                  child: Image.asset(
                    "assets/images/test_item.png",
                    width: 90.w,
                    height: 50.h,
                    
                  )),
              ContentPosition(
                  // right: 5.w,
                  left: 75.w,
      
                  top: 60.h,
                  child: InkWell(
                      onTap: () {},
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
                      "T-shirts Cotton ",
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
                        "250 L.E",
                        style: Styles.font14W500,
                      ),
                      InkWell(
                          onTap: () {
                            ScaffoldMessenger.of(context)
                                .showSnackBar(const SnackBar(
                                    backgroundColor: Colors.white,
                                    content: Text(
                                      "Added to cart",
                                      style: TextStyle(color: Colors.black),
                                    )));
                          },
                          child: Image.asset(
                            "assets/images/cartIcon.png",
                            width: 20.w,
                            height: 14.h,
                          ))
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

// ignore: must_be_immutable
class ContentPosition extends StatelessWidget {
  double? top;
  double? left;
  double? right;
  double? bottom;
  final Widget child;

  ContentPosition({
    Key? key,
    this.top,
    this.left,
    this.right,
    this.bottom,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top ?? 0,
        left: left ?? 0,
        right: right ?? 0,
        bottom: bottom ?? 0,
        child: child);
  }
}
