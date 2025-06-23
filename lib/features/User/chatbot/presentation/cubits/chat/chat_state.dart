abstract class ChatbotState {}

class ChatbotInitial extends ChatbotState {}

class ChatbotResponseState extends ChatbotState {
  final List<Map<String, String>> chatHistory;

  ChatbotResponseState(this.chatHistory);
}

class ChatbotTypingState extends ChatbotState {
  final List<Map<String, String>> chatHistory;
  final String partialAnswer;

  ChatbotTypingState(this.chatHistory, this.partialAnswer);
}
