import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/networking/dio_factory.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/Owner/orders_status/presentation/views/widgets/custome_order.dart';
import '../../data/api/orders_source.dart';
import '../../data/repo/order_repo.dart';
import '../manager/order_cubit.dart';
import '../manager/order_state.dart';

class BrandOrdersStatusView extends StatelessWidget {
  const BrandOrdersStatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OrdersCubit(OrdersRepo(OrdersSource(DioFactory.getDio())))
        ..fetchOrders(),
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Order Status',
                  style: Styles.font35W700.copyWith(fontSize: 30.sp),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
