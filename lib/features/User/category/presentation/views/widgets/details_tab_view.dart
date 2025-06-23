import 'package:nile_brand/core/routing/exports.dart';

class DetailsTabView extends StatefulWidget {
  final TabController tabController;
  final String productId;
  const DetailsTabView(
      {super.key, required this.tabController, required this.productId});

  @override
  State<DetailsTabView> createState() => _DetailsTabViewState();
}

class _DetailsTabViewState extends State<DetailsTabView> {
  @override
  @override
  Widget build(BuildContext context) {
    return TabBar(
      controller: widget.tabController,
      dividerHeight: 0,
      padding: EdgeInsets.zero,
      labelPadding: EdgeInsets.zero,
      labelStyle: Styles.font16W500.copyWith(fontWeight: FontWeight.w600),
      indicator: BoxDecoration(
        color: Colors.white.withValues(alpha: 0),
      ),
      tabs: [
        Tab(
          child: Container(
            height: 33.h,
            width: 176.w,
            decoration: BoxDecoration(
                border: widget.tabController.index == 0
                    ? Border.all(color: ColorManager.mainColor)
                    : null,
                color: ColorManager.grayD9,
                borderRadius: BorderRadius.circular(6.r)),
            child: Center(
              child: Text(
                "Description",
                style: Styles.font16W500.copyWith(color: Colors.black),
              ),
            ),
          ),
        ),
        Tab(
          child: Container(
            height: 33.h,
            width: 176.w,
            decoration: BoxDecoration(
                border: widget.tabController.index == 1
                    ? Border.all(color: ColorManager.mainColor)
                    : null,
                color: ColorManager.grayD9,
                borderRadius: BorderRadius.circular(6.r)),
            child: Center(
              child: Text(
                "Reviews",
                style: Styles.font16W500.copyWith(color: Colors.black),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
