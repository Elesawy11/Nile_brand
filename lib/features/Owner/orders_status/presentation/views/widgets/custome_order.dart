import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/features/Owner/orders_status/data/models/order_model.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/styles.dart';

class CustomeOrder extends StatefulWidget {
  final OrderModel order;
  final int index;

  const CustomeOrder({
    super.key,
    required this.order,
    required this.index,
  });

  @override
  State<CustomeOrder> createState() => _CustomeOrderState();
}

class _CustomeOrderState extends State<CustomeOrder> {
  late String currentStatus;

  @override
  void initState() {
    super.initState();
    currentStatus = widget.order.status;
  }

  Color _getStatusColor(String status) {
    switch (status) {
      case 'pending':
        return Colors.orange;
      case 'shipped':
        return Colors.blue;
      case 'delivered':
        return Colors.green;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      tilePadding: EdgeInsets.symmetric(horizontal: 12.w),
      title: Row(
        children: [
          Image.asset(
            Assets.imagesOrderIcon,
            height: 24.r,
            width: 24.r,
          ),
          15.hs,
          Text(
            "Order #${widget.index + 1}",
            style: Styles.font24W500.copyWith(fontSize: 19.sp),
          ),
        ],
      ),
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ...widget.order.cartItems.map((item) {
                return ListTile(
                  leading: const Icon(Icons.shopping_cart),
                  title: Text(item.product.name),
                  subtitle: Text('Quantity: ${item.quantity}'),
                );
              }).toList(),
              const Divider(),
              ListTile(
                leading: const Icon(Icons.email),
                title: Text(widget.order.user.email),
              ),
              ListTile(
                leading: const Icon(Icons.location_on),
                title: Text(widget.order.address),
              ),
              ListTile(
                leading: const Icon(Icons.payment),
                title: Text('Paid: ${widget.order.isPaid ? "Yes" : "No"}'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Status:", style: Styles.font16W400),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 12, vertical: 6),
                      decoration: BoxDecoration(
                        color: _getStatusColor(widget.order.status),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Text(
                        widget.order.status,
                        style: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              10.vs,
            ],
          ),
        )
      ],
    );
  }
}
