import '../../data/models/product_model.dart';
import 'package:nile_brand/core/routing/exports.dart' hide ProductModel;

class ProductDetailsView extends StatefulWidget {
  const ProductDetailsView(
      {super.key,
      required this.product,
      required this.isFavorite,
      required this.isCarted});
  final ProductModel product;
  final ValueNotifier<bool> isFavorite;
  final ValueNotifier<bool> isCarted;
  @override
  State<ProductDetailsView> createState() => _ProductDetailsViewState();
}

class _ProductDetailsViewState extends State<ProductDetailsView>
    with SingleTickerProviderStateMixin {
  ValueNotifier<int> selectedColor = ValueNotifier(0);
  ValueNotifier<int> selectedSize = ValueNotifier(0);
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_tabController.index == 1) {
      context.read<GetReviewsCubit>().getReviews(widget.product.id!);
    }
    List<Widget> productInfo = [
      DescreptionInfo(
        description: widget.product.description,
        productId: widget.product.id ?? '',
        isCarted: widget.isCarted,
        product: widget.product,
      ),
      ReviewsInfo(
        productId: widget.product.id!,
      )
    ];
    return SafeArea(
        child: Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => const UserOwnerChat(),
          ));
        },
        child: Image.asset(
          Assets.imagesChatWithOwnerIcon,
          width: 32.w,
          height: 32.h,
        ),
      ),
      appBar: AppBar(
        title: Text(
          "Details",
          style: Styles.font24W500,
        ),
        centerTitle: true,
        actions: [
          InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const ArScreen(),
              ));
            },
            child: Padding(
              padding: EdgeInsets.only(right: 20.r),
              child: Image.asset(
                Assets.imagesArOption,
                height: 24.h,
                width: 24.w,
              ),
            ),
          )
        ],
      ),
      body: ProductDetailsViewBody(
          selectedColor: selectedColor,
          widget: widget,
          selectedSize: selectedSize,
          tabController: _tabController,
          productInfo: productInfo),
    ));
  }
}
