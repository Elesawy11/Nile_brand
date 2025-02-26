import '../../../../../core/utils/assets.dart';

class Constatns {
  Constatns._();

  static List<TrackOrderListModel> trackOrderList = [
    TrackOrderListModel(
      image: Assets.imagesOrderPending,
      title: 'ORDER PENDING',
      description: 'Your order is currently being processed',
    ),
    TrackOrderListModel(
      image: Assets.imagesOrderShipped,
      title: 'ORDER SHIPPED',
      description:
          'Your order has been shipped and is on its way! Estimated delivery time: 6 days',
    ),
    TrackOrderListModel(
      image: Assets.imagesOrderDelvering,
      title: 'ORDER DELIVERED',
      description: 'Your order has been successfully delivered!',
    ),
  ];
}

class TrackOrderListModel {
  final String image;
  final String title;
  final String description;
  TrackOrderListModel({
    required this.image,
    required this.title,
    required this.description,
  });

  
}
