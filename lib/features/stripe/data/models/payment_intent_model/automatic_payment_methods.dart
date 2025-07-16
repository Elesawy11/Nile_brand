class AutomaticPaymentMethods {
<<<<<<< HEAD
  bool? enabled;

  AutomaticPaymentMethods({this.enabled});

  factory AutomaticPaymentMethods.fromJson(Map<String, dynamic> json) {
    return AutomaticPaymentMethods(
      enabled: json['enabled'] as bool?,
    );
  }

  Map<String, dynamic> toJson() => {
        'enabled': enabled,
      };
=======
	bool? enabled;

	AutomaticPaymentMethods({this.enabled});

	factory AutomaticPaymentMethods.fromJson(Map<String, dynamic> json) {
		return AutomaticPaymentMethods(
			enabled: json['enabled'] as bool?,
		);
	}



	Map<String, dynamic> toJson() => {
				'enabled': enabled,
			};
>>>>>>> 17a68a0 (stripe methods)
}
