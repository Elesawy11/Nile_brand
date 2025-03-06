import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/custome_item.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/subcategoriy_bar.dart';

class CategoryDetails extends StatelessWidget {
  final String category;
  const CategoryDetails({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          SubcategoriyBar(category: category),
          Expanded(
            flex: 3,
            child: GridView.builder(
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 4.w,
                  mainAxisSpacing: 4.w,
                  childAspectRatio: 2 / 3),
              itemCount: 10,
              itemBuilder: (context, index) {
                return const CustomeItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}
