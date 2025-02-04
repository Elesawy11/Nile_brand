import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:nile_brand/core/routing/routes.dart';
import 'package:nile_brand/core/utils/assets.dart';
import 'package:nile_brand/core/utils/color_manager.dart';
import 'package:nile_brand/core/utils/service_locator.dart';
import 'package:nile_brand/core/utils/spacer.dart';
import 'package:nile_brand/core/utils/styles.dart';
import 'package:nile_brand/features/chatbot/ui/cubits/cubit/chatbot_scroll_cubit.dart';
import 'package:nile_brand/features/chatbot/ui/views/widgets/chattbot_scroll_button.dart';

class ChatbotOnboardingView extends StatelessWidget {
  const ChatbotOnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = getIt.get<ChatbotScrollCubit>();
    return BlocProvider(
      create: (context) => cubit,
      child: Scaffold(
        backgroundColor: ColorManager.mainColor,
        body: BlocConsumer<ChatbotScrollCubit, ChatbotScrollState>(
          listener: (context, state) {
            if (state is ScrollFinish) {
              context.push(Routes.chatbot);
            }
          },
          builder: (context, state) {
            return Column(
              children: [
                Expanded(
                  child: PageView(
                    controller: cubit.controller,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Center(
                        child: Image.asset(
                          Assets.imagesChatbootImage,
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            Assets.imagesChatbotImage2,
                          ),
                          verticalSpace(72),
                          SizedBox(
                            width: 265.w,
                            height: 100.h,
                            child: Text(
                              'The chatbot is equipped with pre-set questions and answers to assist you easily and quickly .',
                              style: Styles.font22W500.copyWith(
                                color: Colors.white,
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: EdgeInsets.only(right: 24.w, bottom: 24.h),
                    child: ChatbotScrollButton(
                      progress: state is ScrollIncrease ? state.progress : 0.5,
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
