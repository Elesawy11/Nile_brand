import 'package:nile_brand/core/routing/exports.dart';
import '../../../../category/presentation/cubits/get_products_cubit/get_products_state.dart';
import '../../../../category/presentation/views/widgets/custome_item.dart';
import '../../../../category/presentation/views/widgets/product_shimmer.dart';

class GetProductBlocBuilder extends StatelessWidget {
  const GetProductBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetProductsCubit, GetProductsState>(
      buildWhen: (previous, current) {
        return current is GetProductSuccess ||
            current is GetProductLoading ||
            current is GetProductError;
      },
      builder: (context, state) {
        return state is GetProductSuccess
            ? Expanded(
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 4.w,
                    mainAxisSpacing: 4.w,
                    childAspectRatio: 2 / 2.3,
                  ),
                  itemCount: 20,
                  itemBuilder: (context, index) {
                    return CustomeItem(
                      product: state.products[index],
                    );
                  },
                ),
              )
            : state is GetProductError
                ? Center(
                    child: Image.asset(
                      Assets.imagesNoImage,
                    ),
                  )
                : state is GetProductLoading
                    ? Expanded(
                        child: GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 1,
                            crossAxisSpacing: 4.w,
                            mainAxisSpacing: 4.w,
                            childAspectRatio: 2 / 2.3,
                          ),
                          itemCount: 20,
                          itemBuilder: (context, index) {
                            return const ProductShimmer();
                          },
                        ),
                      )
                    : const SizedBox();
      },
    );
  }
}
