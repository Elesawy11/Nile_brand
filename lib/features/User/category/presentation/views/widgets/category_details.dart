import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/features/User/category/presentation/cubits/get_products_cubit/get_products_cubit.dart';
import 'package:nile_brand/features/User/category/presentation/cubits/get_products_cubit/get_products_state.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/custome_item.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/subcategoriy_bar.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CategoryDetails extends StatelessWidget {
  final String category;
  const CategoryDetails({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Row(
        children: [
          const SubcategoriyBar(),
          Expanded(
            flex: 3,
            child: BlocBuilder<GetProductsCubit, GetProductsState>(
              buildWhen: (previous, current) {
                return current is GetProductSuccess ||
                    current is GetProductLoading ||
                    current is GetProductSuccess;
              },
              builder: (context, state) {
                return state is GetProductSuccess
                    ? GridView.builder(
                        shrinkWrap: true,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 4.w,
                          mainAxisSpacing: 4.w,
                          childAspectRatio: 2 / 3,
                        ),
                        itemCount: state.products.length,
                        itemBuilder: (context, index) {
                          return Skeletonizer(
                            enabled: state is GetProductLoading,
                            child: CustomeItem(
                              product: state.products[index],
                            ),
                          );
                        },
                      )
                    : state is GetProductError
                        ? Center(
                            child: Text(
                              state.error,
                              style: const TextStyle(color: Colors.red),
                            ),
                          )
                        : const SizedBox();
              },
            ),
          ),
        ],
      ),
    );
  }
}
