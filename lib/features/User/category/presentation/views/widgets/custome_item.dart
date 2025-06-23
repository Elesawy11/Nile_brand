import '../../../../../../core/routing/exports.dart' hide ProductModel;
import '../../../data/models/product_model.dart';
import 'product_details_widget.dart';

class CustomeItem extends StatefulWidget {
  const CustomeItem({super.key, required this.product});
  final ProductModel product;

  @override
  State<CustomeItem> createState() => _CustomeItemState();
}

class _CustomeItemState extends State<CustomeItem> {
  final ValueNotifier<bool> _isFavorite = ValueNotifier<bool>(false);
  final ValueNotifier<bool> _isCarted = ValueNotifier<bool>(false);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(Routes.productDetails, extra: {
          'product': widget.product,
          'isFavorite': _isFavorite,
          'isCarted': _isCarted
        });
      },
      child: MultiBlocProvider(
        providers: [
          BlocProvider.value(
            value: getIt.get<GetMyCartCubit>(),
          ),
          BlocProvider.value(
            value: getIt.get<GetWishListCubit>(),
          ),
        ],
        child: ProductDetailsWidget(
            widget: widget, isFavorite: _isFavorite, isCarted: _isCarted),
      ),
    );
  }

  @override
  void dispose() {
    _isFavorite.dispose(); // Clean up the ValueNotifier
    super.dispose();
  }
}
