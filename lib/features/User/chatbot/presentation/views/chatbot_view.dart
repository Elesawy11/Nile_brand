import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nile_brand/features/User/chatbot/presentation/cubits/chat/chat_cubit.dart';
import 'package:nile_brand/features/User/chatbot/presentation/views/widgets/chat_bar_widget.dart';
import 'package:nile_brand/features/User/chatbot/presentation/views/widgets/chatbot_top_bar_widget.dart';
import 'package:nile_brand/features/User/chatbot/presentation/views/widgets/list_view_of_chat_bubbles_widget.dart';

class ChatbotView extends StatelessWidget {
  const ChatbotView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ChatbotCubit(),
      child: SafeArea(
        child: Scaffold(
          // TODO : edit this
          bottomNavigationBar: Padding(
            padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 10.h),
            child: const ChatBarWidget(),
          ),
          extendBody: true,
          body: Column(
            children: [
              const ChatbotTopBarWidget(),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 20.w,
                    right: 20.w,
                    bottom: MediaQuery.of(context).viewInsets.bottom + 66.h,
                  ),
                  child: const ListViewOfChatBubblesWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
