import 'package:custom_rating_bar/custom_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/sizes_padding.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/core/widgets/app_text_button.dart';
import 'package:nile_brand/core/widgets/app_text_form_field.dart';
import 'package:nile_brand/features/User/profile/presentation/views/widgets/profile_image.dart';

class FeedbackView extends StatelessWidget {
  const FeedbackView({super.key});

  @override
  Widget build(BuildContext context) {
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
              const ProfileImage(imageUrl: Assets.imagesProfileImage),
              Text(
                "User Name",
                style: Styles.font20W600,
              ),
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
                onRatingChanged: (value) => debugPrint('$value'),
                initialRating: 0,
                maxRating: 5,
              ),
              20.vs,
              Padding(
                padding: EdgeInsets.all(10.h),
                child: AppTextFormField(
                  isLabled: true,
                  backgroundColor: const Color(0xffD9D9D9),
                  maxLines: 7,
                  hintText: "Tell Us How We Can Enhance Your Experience?",
                  validator: (p0) {},
                ),
              ),
              10.vs,
              Padding(
                padding: 50.ph,
                child: AppTextButton(
                  text: "Submit My Feedback",
                  backgroundColor: ColorManager.mainColor,
                  textColor: Colors.white,
                  onPressed: () {
                    context.pop();
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
