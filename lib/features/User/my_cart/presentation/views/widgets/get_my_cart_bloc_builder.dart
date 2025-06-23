import 'package:nile_brand/core/routing/exports.dart';
import '../../../../../stripe/presentation/views/cubits/cubit/payment_cubit.dart';
import '../../cubits/mycart_cubit/get_my_cart_state.dart';
import 'cart_checkout_widget.dart';
import 'delete_all_product_from_my_cart_bloc_listener.dart';
import 'my_cart_item_widget.dart';
import 'payment_bloc_consumer.dart';

class GetMyCartBlocBuilder extends StatelessWidget {
  const GetMyCartBlocBuilder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetMyCartCubit, GetMyCartState>(
      builder: (context, state) {
        return state is GetMyCartLoading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : state is GetMyCartSuccess
                ? CustomScrollView(
                    slivers: [
                      const SliverToBoxAdapter(
                        child: DeleteAllProductsFromMyCartBlocListener(),
                      ),
                      SliverToBoxAdapter(
                        child: verticalSpace(18),
                      ),
                      SliverList.builder(
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: EdgeInsets.only(
                              left: 12.w,
                              right: 12.w,
                              bottom: 18.h,
                            ),
                            child: MyCartItemWidget(
                              cartProduct: state.productsList[index],
                            ),
                          );
                        },
                        itemCount: state.myCart.cartItems?.length ?? 0,
                      ),
                      SliverToBoxAdapter(
                        child: 18.vs,
                      ),
                      SliverToBoxAdapter(
                        child: Container(
                          height: 320.h,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40.r),
                              topRight: Radius.circular(40.r),
                            ),
                            border: const Border(
                              top: BorderSide(
                                color: ColorManager.grayCA,
                                width: 3,
                              ),
                            ),
                          ),
                          child: CartCheckoutWidget(
                            price:
                                state.myCart.totalPrice?.toStringAsFixed(2) ??
                                    '',
                          ),
                        ),
                      ),
                    ],
                  )
                : state is GetMyCartError
                    ? BlocProvider(
                        create: (context) => getIt.get<PaymentCubit>(),
                        child: const PaymentBlocConsumer(),
                      )
                    : const SizedBox();
      },
    );
  }
}
