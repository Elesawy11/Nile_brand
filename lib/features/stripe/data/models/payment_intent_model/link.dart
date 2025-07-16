class Link {
<<<<<<< HEAD
  dynamic persistentToken;

  Link({this.persistentToken});

  factory Link.fromJson(Map<String, dynamic> json) => Link(
        persistentToken: json['persistent_token'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'persistent_token': persistentToken,
      };
=======
	dynamic persistentToken;

	Link({this.persistentToken});

	factory Link.fromJson(Map<String, dynamic> json) => Link(
				persistentToken: json['persistent_token'] as dynamic,
			);

	Map<String, dynamic> toJson() => {
				'persistent_token': persistentToken,
			};
>>>>>>> 17a68a0 (stripe methods)
}
