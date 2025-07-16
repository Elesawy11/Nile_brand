import 'tip.dart';

class AmountDetails {
<<<<<<< HEAD
  Tip? tip;

  AmountDetails({this.tip});

  factory AmountDetails.fromJson(Map<String, dynamic> json) => AmountDetails(
        tip: json['tip'] == null
            ? null
            : Tip.fromJson(json['tip'] as Map<String, dynamic>),
      );

  Map<String, dynamic> toJson() => {
        'tip': tip?.toJson(),
      };
=======
	Tip? tip;

	AmountDetails({this.tip});

	factory AmountDetails.fromJson(Map<String, dynamic> json) => AmountDetails(
				tip: json['tip'] == null
						? null
						: Tip.fromJson(json['tip'] as Map<String, dynamic>),
			);

	Map<String, dynamic> toJson() => {
				'tip': tip?.toJson(),
			};
>>>>>>> 17a68a0 (stripe methods)
}
