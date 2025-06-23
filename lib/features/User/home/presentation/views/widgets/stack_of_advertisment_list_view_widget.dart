import 'package:flutter/material.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'notification_and_search_widget.dart';

class StackOfAdvertismentListViewWidget extends StatelessWidget {
  const StackOfAdvertismentListViewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const NotificationAndSearchWidget();
  }
}

const List<String> advImage = [
  Assets.imagesAdv1,
  Assets.imagesAdv2,
];
