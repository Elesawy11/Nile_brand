import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nile_brand/features/User/chatbot/presentation/cubits/chat/chat_cubit.dart';
import '../../../../../../core/utils/assets.dart';
import '../../../../../../core/utils/color_manager.dart';
import '../../../../../../core/utils/styles.dart';


class ChatBarWidget extends StatefulWidget {
  const ChatBarWidget({super.key});

  @override
  State<ChatBarWidget> createState() => _ChatBarWidgetState();
}

class _ChatBarWidgetState extends State<ChatBarWidget> {
  final TextEditingController _controller = TextEditingController();

  void _sendMessage() {
    final text = _controller.text.trim();
    if (text.isNotEmpty) {
      context.read<ChatbotCubit>().askQuestion(text); 
      _controller.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40.r),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: ColorManager.lightGrey,
            spreadRadius: 3,
            blurRadius: 3,
            offset: Offset(0, 2.0),
          ),
        ],
      ),
      child: TextFormField(
        controller: _controller,
        onFieldSubmitted: (_) => _sendMessage(), 
        decoration: InputDecoration(
          suffixIconConstraints: BoxConstraints(
            maxWidth: 40.w,
            maxHeight: 40.h,
          ),
          suffixIcon: InkWell(
            onTap: _sendMessage,
            child: Padding(
              padding: EdgeInsets.only(right: 6.w),
              child: SizedBox(
                width: 23.w,
                height: 23.h,
                child: SvgPicture.asset(
                  Assets.svgImagesSendIcon,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          hintText: 'Hello chatbot, how are you today?',
          hintStyle: Styles.font13W700.copyWith(
            color: ColorManager.blue33,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    );
  }
}
