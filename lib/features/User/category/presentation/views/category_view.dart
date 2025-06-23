import 'package:nile_brand/core/utils/service_locator.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/category_details.dart';
import 'package:nile_brand/features/User/category/presentation/views/widgets/custom_appbar.dart';
import '../../../../../core/routing/exports.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({
    super.key,
  });

  @override
  State<CategoryView> createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView>
    with SingleTickerProviderStateMixin {
  TabController? tabController;
  final cubit = getIt.get<GetCategoryCubit>();

  @override
  void initState() {
    tabController =
        TabController(length: cubit.categoryList.length + 1, vsync: this);

    super.initState();
  }

  @override
  void dispose() {
    tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<GetCategoryCubit>();

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: CustomeAppbar(tabController: tabController!),
      body: TabBarView(
        controller: tabController,
        children: cubit.categoryList
            .map(
              (category) => CategoryDetails(
                category: category.id ?? 'Not Found',
              ),
            )
            .toList(),
      ),
    );
  }
}
