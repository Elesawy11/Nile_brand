import '../../../../../core/utils/assets.dart';
import '../../data/models/order_model.dart';

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
  static final List<Order> orders = [
    Order(
        orderNumber: 'pending',
        totalPrice: 120.50,
        orderId: '685a25bc3e8d20fb6b9e160c'),
    Order(
        orderNumber: 'pending',
        totalPrice: 89.90,
        orderId: '685a29703e8d20fb6b9e18a9'),
    Order(
        orderNumber: 'pending',
        totalPrice: 230.00,
        orderId: '685a1f0186b7bba64f2424b2'),
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
