import 'dart:async';
import 'dart:convert';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/services.dart';
import 'package:nile_brand/features/User/chatbot/presentation/cubits/chat/chat_state.dart';
import '../../../data/models/questions_model.dart';

class ChatbotCubit extends Cubit<ChatbotState> {
  List<FAQItem> _allFAQs = [];
  List<Map<String, String>> _chatHistory = [];

  ChatbotCubit() : super(ChatbotInitial()) {
    _loadFAQs();
  }


  Future<void> _loadFAQs() async {
    final String jsonString = await rootBundle.loadString('assets/json/chatbot-data.json');
    final Map<String, dynamic> jsonData = json.decode(jsonString);
    final List faqs = jsonData['faqs'];

    _allFAQs = faqs
        .map((faq) => FAQ.fromJson(faq))
        .expand((faq) => faq.questions)
        .toList();
  }

  void askQuestion(String question) {

    _chatHistory.add({"role": "user", "message": question});

    final answer = _findAnswer(question);
    
    String partial = "";
    int index = 0;

    Timer.periodic(const Duration(milliseconds: 50), (timer) {
      if (index >= answer.length) {
        timer.cancel();
      
        _chatHistory.add({"role": "bot", "message": answer});
        emit(ChatbotResponseState(List.from(_chatHistory)));
      } else {
        partial += answer[index];
        index++;
      
        emit(ChatbotTypingState(List.from(_chatHistory), partial));
      }
    });
  }

  String _findAnswer(String question) {
    for (var faq in _allFAQs) {
      if (faq.question.toLowerCase().contains(question.toLowerCase()) ||
          question.toLowerCase().contains(faq.question.toLowerCase())) {
        return faq.answer;
      }
    }
    return "I'm sorry, I don't have an answer for that.";
  }
}
