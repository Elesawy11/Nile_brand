import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/core/networking/dio_factory.dart';
import 'package:nile_brand/features/Owner/dashboard/data/api/dashboard_source.dart';
import 'package:nile_brand/features/Owner/dashboard/data/repo/dashboard_repo.dart';
import 'package:nile_brand/features/Owner/dashboard/presentation/views/widgets/custome_state_card.dart';
import 'package:nile_brand/features/Owner/dashboard/presentation/views/widgets/daily_statistics.dart';
import 'package:nile_brand/features/Owner/dashboard/presentation/views/widgets/top_selling_products.dart';
import '../manager/dashboard_cubit.dart';
import '../manager/dashboard_state.dart';

class DashboardView extends StatelessWidget {
  const DashboardView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DashboardCubit(
        DashboardRepo(DashboardSource(DioFactory.getDio())),
      )..fetchAllDashboardData(),
      child: const _DashboardContent(),
    );
  }
}

class _DashboardContent extends StatelessWidget {
  const _DashboardContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F9FB),
      appBar: AppBar(
        title: const Text('Dashboard'),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: BlocBuilder<DashboardCubit, DashboardState>(
            builder: (context, state) {
              final cubit = context.read<DashboardCubit>();

              if (state is DashboardLoading || state is TopSellingLoading) {
                return const Center(child: CircularProgressIndicator());
              } else if (state is DashboardLoaded || state is TopSellingLoaded) {
                final data = cubit.dashboard;

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CustomeStateCard(
                      icon: Icons.people,
                      title: "Total Customers",
                      value:data == null ? "" :"${data.data.customerStats.totalCustomers}",
                      change: "0%",
                      changeColor: Colors.green,
                    ),
                    SizedBox(height: 16.sp),
                    CustomeStateCard(
                      icon: Icons.shopping_bag,
                      title: "Total Sales",
                      value:data == null ? "0" :"${data.data.totalSales}",
                      change: "0%",
                      changeColor: Colors.green,
                    ),
                    SizedBox(height: 16.sp),
                    CustomeStateCard(
                      icon: Icons.attach_money,
                      title: "Total Revenue",
                      value:data == null ? "0" : "\$${data.data.totalRevenue.toStringAsFixed(2)}",
                      change: "0%",
                      changeColor: Colors.green,
                    ),
                    SizedBox(height: 16.sp),
                    CustomeStateCard(
                      icon: Icons.autorenew,
                      title: "Returning Customers",
                      value:data == null ? "0" : "${data.data.customerStats.returningCustomers}",
                      change: "0%",
                      changeColor: Colors.red,
                    ),
                    SizedBox(height: 30.sp),
                    TopSellingProducts(topSellings: cubit.tops),
                    SizedBox(height: 30.sp),
                    DailyStatistics(dailyStat:data == null ? [] : data.data.dailyStats),
                  ],
                );
              } else if (state is DashboardError) {
                return Center(child: Text("Error: ${state.message}"));
              } else {
                return const SizedBox.shrink();
              }
            },
          ),
        ),
      ),
    );
  }
}
