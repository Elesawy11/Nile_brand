class FAQ {
  final String category;
  final List<FAQItem> questions;

  FAQ({required this.category, required this.questions});

  factory FAQ.fromJson(Map<String, dynamic> json) {
    return FAQ(
      category: json['category'],
      questions:
          (json['questions'] as List).map((q) => FAQItem.fromJson(q)).toList(),
    );
  }
}

class FAQItem {
  final String question;
  final String answer;

  FAQItem({required this.question, required this.answer});

  factory FAQItem.fromJson(Map<String, dynamic> json) {
    return FAQItem(
      question: json['question'],
      answer: json['answer'],
    );
  }
}
