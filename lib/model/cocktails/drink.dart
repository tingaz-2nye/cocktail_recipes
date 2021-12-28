class CocktailDrink {
  String? strDrink;
  String? strDrinkThumb;
  String? idDrink;

  CocktailDrink({this.strDrink, this.strDrinkThumb, this.idDrink});

  factory CocktailDrink.fromJson(Map<String, dynamic> json) => CocktailDrink(
        strDrink: json['strDrink'] as String?,
        strDrinkThumb: json['strDrinkThumb'] as String?,
        idDrink: json['idDrink'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'strDrink': strDrink,
        'strDrinkThumb': strDrinkThumb,
        'idDrink': idDrink,
      };
}
