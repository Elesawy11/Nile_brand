class PaymentIntentInputModel {
  final String amount;
  final String currency;

  PaymentIntentInputModel({required this.amount, required this.currency});

  toJson() {
    return {
      'amount': {amount * 100}.toString(),
      'currency': currency,
    };
  }
}
