import 'package:nile_brand/core/routing/exports.dart';
import 'add_review_widget.dart';
import 'empty_review_widget.dart';
import 'list_view_of_review_widget.dart';

class ReviewsInfo extends StatelessWidget {
  const ReviewsInfo({
    super.key,
    required this.productId,
  });
  final String productId;
  @override
  Widget build(BuildContext context) {
    final cubit = context.read<CreateReviewCubit>();
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        children: [
          Container(
            width: 380.w,
            height: 57.h,
            padding: EdgeInsets.symmetric(horizontal: 7.w),
            decoration: BoxDecoration(
              color: ColorManager.grayD9,
              borderRadius: BorderRadius.circular(11.r),
            ),
            child: Form(
              key: cubit.formKey,
              child: AddReviewWidget(cubit: cubit, productId: productId),
            ),
          ),
          10.vs,
          BlocBuilder<GetReviewsCubit, GetReviewsState>(
            builder: (context, state) {
              return state is GetReviewsSuccess
                  ? ListViewOfReviewWidget(
                      state: state,
                    )
                  : state is GetReviewsLoading
                      ? const Center(
                          child: CircularProgressIndicator(
                            color: ColorManager.mainColor,
                          ),
                        )
                      : state is GetReviewsError
                          ? const EmptyReviewsWidget()
                          : const SizedBox();
            },
          )
        ],
      ),
    );
  }
}
