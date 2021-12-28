class Drink {
  String? strCategory;

  Drink({this.strCategory});

  factory Drink.fromJson(Map<String, dynamic> json) => Drink(
        strCategory: json['strCategory'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'strCategory': strCategory,
      };
}
