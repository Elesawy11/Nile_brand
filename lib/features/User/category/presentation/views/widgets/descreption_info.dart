import 'package:nile_brand/core/routing/exports.dart' hide ProductModel;
import '../../../data/models/product_model.dart';
import 'add_product_to_cart_bloc_consumer.dart';

class DescreptionInfo extends StatelessWidget {
  const DescreptionInfo(
      {super.key,
      this.description,
      required this.productId,
      required this.isCarted,
      required this.product});
  final String? description;
  final String productId;
  final ProductModel product;
  final ValueNotifier<bool> isCarted;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<GetMyCartCubit>(),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 22.w, right: 22.w),
            child: Center(
                child: ReadMoreText(
              description ??
                  'This is a very long description that you might want to truncate initially and show fully when the user clicks on Read More...',
              trimLines: 2,
              colorClickableText: Colors.red,
              trimMode: TrimMode.Line,
              trimCollapsedText: 'Read more',
              trimExpandedText: 'Read less',
              style: Styles.font16W500.copyWith(
                color: Colors.black,
              ),
              moreStyle: Styles.font16W500.copyWith(color: Colors.red),
              lessStyle: Styles.font16W500.copyWith(color: Colors.red),
            )),
          ),
          27.vs,
          Padding(
            padding: EdgeInsets.only(left: 28.w, right: 28.w),
            child: AddPRroductToCartBlocConsumer(
                isCarted: isCarted, product: product, productId: productId),
          )
        ],
      ),
    );
  }
}
