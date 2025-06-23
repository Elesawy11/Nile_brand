import 'package:nile_brand/core/routing/exports.dart';

class AddReviewWidget extends StatelessWidget {
  const AddReviewWidget({
    super.key,
    required this.cubit,
    required this.productId,
  });

  final CreateReviewCubit cubit;
  final String productId;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          Assets.imagesProfileImage,
          height: 32.h,
          width: 32.w,
        ),
        Expanded(
          flex: 2,
          child: AppTextFormField(
            hintText: "Add review",
            validator: (value) {
              if (value != null && value.isNotEmpty) {
                return "this faild is required";
              }
              return null;
            },
          ),
        ),
        BlocConsumer<CreateReviewCubit, CreateReviewState>(
          listener: (context, state) {
            if (state is CreateReivewSuccess) {
              context.read<GetReviewsCubit>().getReviews(productId);
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: ColorManager.grayCA,
                  content: Text(
                    'commit add succesfuly',
                    style: Styles.font14W500.copyWith(
                      color: ColorManager.mainText,
                    ),
                  )));
            } else if (state is CreateReivewError) {
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  backgroundColor: ColorManager.grayCA,
                  content: Text(
                    state.error,
                    style: Styles.font14W500
                        .copyWith(color: ColorManager.forgetPassColor),
                  )));
            }
          },
          builder: (context, state) {
            return InkWell(
                onTap: () {
                  cubit.createReview(id: productId);
                  cubit.reviewController.clear();
                },
                child: state is CreateReivewLoading
                    ? SizedBox(
                        height: 24.r,
                        width: 24.r,
                        child: const CircularProgressIndicator())
                    : Icon(
                        Icons.send_outlined,
                        size: 24.w,
                        color: ColorManager.mainColor,
                      ));
          },
        )
      ],
    );
  }
}
