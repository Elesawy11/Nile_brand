enum MessageSender { user, bot }

class ChatMessageModel {
  final String text;
  final MessageSender sender;

  ChatMessageModel({required this.text, required this.sender});
}
