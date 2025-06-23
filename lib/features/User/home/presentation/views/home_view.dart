import 'package:nile_brand/core/routing/exports.dart';
import 'widgets/get_product_bloc_builder.dart';
import 'widgets/list_view_of_categories_widget.dart';
import 'widgets/notification_and_search_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: const NotificationAndSearchWidget(),
            ),
            verticalSpace(16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Text(
                'Categories',
                style: Styles.font20W600,
              ),
            ),
            SizedBox(
              height: 120.h,
              child: const ListViewOfCategoreisWidget(),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: SizedBox(
                height: 5.h,
                child: const Divider(
                  color: ColorManager.grayCA,
                  thickness: 1,
                ),
              ),
            ),
            16.vs,
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12.w),
              child: Text(
                'Products',
                style: Styles.font20W600,
              ),
            ),
            16.vs,
            const GetProductBlocBuilder(),
          ],
        ),
      ),
    );
  }
}
