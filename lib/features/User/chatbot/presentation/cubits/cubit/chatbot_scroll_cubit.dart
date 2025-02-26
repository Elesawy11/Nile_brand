import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

part 'chatbot_scroll_state.dart';

class ChatbotScrollCubit extends Cubit<ChatbotScrollState> {
  ChatbotScrollCubit() : super(ChatbotScrollInitial());

  double progress = 0.5;
  double index = 0;
  PageController controller = PageController();

  void scroll() async {
    if (progress == 1) {
      emit(ScrollFinish());
      await close();
    } else {
      progress += 0.5;
      // index += screenWidth;
      controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
      emit(
        ScrollIncrease(
          progress: progress,
        ),
      );
    }
  }

  @override
  Future<void> close() {
    controller.dispose();

    return super.close();
  }
}
