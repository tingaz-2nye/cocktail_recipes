import 'drink.dart';

class CocktailDetails {
  List<Details> details;

  CocktailDetails({required this.details});

  factory CocktailDetails.fromJson(Map<String, dynamic> json) {
    return CocktailDetails(
      details: (json['drinks'] as List<dynamic>)
          .map((e) => Details.fromJson(e as Map<String, dynamic>))
          .toList(),
    );
  }

  Map<String, dynamic> toJson() => {
        'drinks': details.map((e) => e.toJson()).toList(),
      };
}
