import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/custom_tab_bar.dart';
// import 'package:nile_brand/features/User/category/presentation/views/widgets/custom_tabbar.dart';
import 'package:nile_brand/features/User/home/presentation/views/widgets/notification_and_search_widget.dart';

class CustomeAppbar extends StatefulWidget implements PreferredSizeWidget {
  final TabController tabController;
  const CustomeAppbar({super.key, required this.tabController});

  @override
  State<CustomeAppbar> createState() => _CustomeAppbarState();

  @override
  Size get preferredSize => Size(double.maxFinite, 127.h);
}

class _CustomeAppbarState extends State<CustomeAppbar>
    with SingleTickerProviderStateMixin {
  late TextEditingController searchController;

  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }

  bool tabed = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(top: 30.h, right: 10.w, left: 10.w),
        child: Column(
          children: [
            const NotificationAndSearchWidget(),
            Row(
              children: [
                Expanded(
                    flex: 6,
                    child: CustomTabBar(tabController: widget.tabController)),
                Expanded(
                  flex: 1,
                  child: InkWell(
                    child: Image.asset(
                      "assets/images/filter.png",
                      width: 20,
                      height: 20,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
