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
      create: (_) =>
          OrdersCubit(OrdersRepo(OrdersSource(DioFactory.getDio())))
            ..fetchOrders(),
      child: BlocBuilder<OrdersCubit, OrdersState>(
        builder: (context, state) {
          return SafeArea(
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
                    20.vs,
                    Expanded(
                      child: Builder(
                        builder: (context) {
                          if (state is OrdersLoading) {
                            return const Center(child: CircularProgressIndicator());
                          } else if (state is OrdersFailure ) {
                            return const Center(child: Text("No orders created yet!"));
                          } else if (state is OrdersSuccess) {
                            final orders = state.orders;
                            return orders.isNotEmpty? RefreshIndicator(
                              onRefresh: () async {
                                await context.read<OrdersCubit>().fetchOrders();
                              },
                              child: ListView.builder(
                                physics: const AlwaysScrollableScrollPhysics(),
                                itemCount: orders.length,
                                itemBuilder: (context, index) {
                                  final order = orders[index];
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                                    child: CustomeOrder(order: order, index: index),
                                  );
                                },
                              ),
                            ) : const Center(child: Text("No orders created yet!"));
                          } else {
                            return const SizedBox.shrink();
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
