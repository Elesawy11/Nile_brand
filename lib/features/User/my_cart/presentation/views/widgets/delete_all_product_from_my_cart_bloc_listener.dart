import 'package:nile_brand/core/routing/exports.dart';

import '../../cubits/delete_product_from_my_cart_cubit/delete_product_from_my_cart_state.dart';

class DeleteAllProductsFromMyCartBlocListener extends StatelessWidget {
  const DeleteAllProductsFromMyCartBlocListener({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocListener<DeleteProductFromMyCartCubit,
        DeleteProductFromMyCartState>(
      listener: (context, state) {
        if (state is DeleteProductSuccess) {
          context.read<GetMyCartCubit>().getMyCart();
        }
      },
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(right: 12.w),
          child: SizedBox(
            width: 100.w,
            height: 38.h,
            child: AppTextButton(
              text: 'clear all',
              onPressed: () {
                context.read<DeleteProductFromMyCartCubit>().deleteMyCart();
              },
              backgroundColor: ColorManager.mainColor,
              borderRadius: 12.r,
            ),
          ),
        ),
      ),
    );
  }
}
