import 'package:nile_brand/core/routing/exports.dart';

import '../cubits/get_wish_list_cubit/get_wish_list_state.dart';
import 'widgets/empty_wishlist_view.dart';
import 'widgets/listview_of_items.dart';

class WishListView extends StatelessWidget {
  const WishListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            backgroundColor: Colors.white,
            surfaceTintColor: Colors.white,
            centerTitle: true,
            title: Text(
              "Whishlist",
              style: Styles.font20W600,
            ),
          ),
          body: BlocBuilder<GetWishListCubit, GetWishListState>(
            builder: (context, state) {
              return state is GetWishListSuccess
                  ? SingleChildScrollView(
                      child: Column(
                        children: [
                          ListviewOfItemsOfWhishlist(
                            productsList: state.products,
                          ),
                        ],
                      ),
                    )
                  : state is GetWishListError
                      ? const EmptyWishlistView()
                      : state is GetWishListLoading
                          ? const Center(
                              child: CircularProgressIndicator(),
                            )
                          : const SizedBox.shrink();
            },
          )),
    );
  }
}
