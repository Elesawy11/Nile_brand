import 'package:flutter/material.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/wish_list/ui/views/listview_of_items.dart';

class WishListView extends StatelessWidget {
  const WishListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "Whislist",
            style: Styles.font20W600,
          ),
        ),
        body:const ListviewOfItemsOfWhishlist()
      ),
    );
  }
}
