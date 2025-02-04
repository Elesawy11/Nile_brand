part of 'chatbot_scroll_cubit.dart';

@immutable
sealed class ChatbotScrollState {}

final class ChatbotScrollInitial extends ChatbotScrollState {}

final class ScrollIncrease extends ChatbotScrollState {
  final double progress;

  ScrollIncrease({required this.progress});
}

final class ScrollFinish extends ChatbotScrollState {}
