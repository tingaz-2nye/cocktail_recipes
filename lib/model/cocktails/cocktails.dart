import 'drink.dart';

class Cocktails {
  List<CocktailDrink> drinks;

  Cocktails({required this.drinks});

  factory Cocktails.fromJson(Map<String, dynamic> json) => Cocktails(
        drinks: (json['drinks'] as List<dynamic>)
            .map((e) => CocktailDrink.fromJson(e as Map<String, dynamic>))
            .toList(),
      );

  Map<String, dynamic> toJson() => {
        'drinks': drinks.map((e) => e.toJson()).toList(),
      };
}
