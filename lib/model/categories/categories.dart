import 'drink.dart';

class Categories {
  List<Drink> drinks;

  Categories({required this.drinks});

  factory Categories.fromJson(Map<String, dynamic> json) => Categories(
        drinks: (json['drinks'] as List<dynamic>)
            .map((e) => Drink.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'drinks': drinks.map((e) => e.toJson()).toList(),
      };
}
