import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:nile_brand/core/routing/exports.dart';
import '../cubits/add_feedback_cubit/add_feedback_cubit.dart';
import 'widgets/feedback_bloc_listener.dart';

class FeedbackView extends StatelessWidget {
  const FeedbackView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AddFeedbackCubit>();
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text(
            "Feedback",
            style: Styles.font20W600,
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              20.vs,
              Text(
                "We’re Listening!",
                style: TextStyle(fontSize: 20.dm, fontWeight: FontWeight.w700),
              ),
              20.vs,
              Padding(
                padding: 10.ph,
                child: Text(
                  textAlign: TextAlign.center,
                  "Your feedback is essential in making our app better. \n  Please take a moment to share your thoughts with us.",
                  style: Styles.font17W400,
                ),
              ),
              20.vs,
              RatingBar(
                alignment: Alignment.center,
                filledIcon: Icons.star,
                emptyIcon: Icons.star_border,
                onRatingChanged: (value) {
                  cubit.reatingController?.text = value.toString();
                },
                initialRating: 0,
                maxRating: 5,
              ),
              20.vs,
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: AppTextFormField(
                  controller: cubit.commentController,
                  isLabled: true,
                  backgroundColor: const Color(0xffD9D9D9),
                  maxLines: 5,
                  hintText: "Tell Us How We Can Enhance Your Experience?",
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter some text';
                    }
                    return null;
                  },
                ),
              ),
              20.vs,
              Padding(
                padding: 50.ph,
                child: AppTextButton(
                  text: "Submit My Feedback",
                  backgroundColor: ColorManager.mainColor,
                  textColor: Colors.white,
                  onPressed: () {
                    cubit.addFeedback();
                    // log(int.parse(cubit.reatingController.text.substring(0,1))
                    //     .toString());
                  },
                ),
              ),
              const FeedbackBlocListener(),
            ],
          ),
        ),
      ),
    );
  }
}
