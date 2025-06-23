import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/utils/styles.dart';


class OwnerSearchWidgetWithLogo extends StatelessWidget {
  final String? brandLogo;
  const OwnerSearchWidgetWithLogo({
    super.key,
    required this.brandLogo,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      
      children: [

        Text("Brand Products" , style: Styles.font35W700.copyWith(fontSize: 30.sp),),
        
        const Spacer(),
        CircleAvatar(
          radius: 20.r,
          backgroundColor: Colors.grey.shade200,
          child: ClipOval(
            child:brandLogo == null ? Image.network(
              "https://nile-brands.up.railway.app//brands/$brandLogo",
              fit: BoxFit.cover,
              width: 40.r,
              height: 40.r,
              errorBuilder: (context, error, stackTrace) =>
                  Icon(Icons.error, size: 20.r),
            ) : Icon(Icons.image_not_supported,size:27.w),
          ),
        )
      ],
    );
  }
}
