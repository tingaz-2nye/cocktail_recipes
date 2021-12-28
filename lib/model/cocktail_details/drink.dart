class Details {
  String? idDrink;
  String? strDrink;
  dynamic strDrinkAlternate;
  String? strTags;
  dynamic strVideo;
  String? strCategory;
  String? strIba;
  String? strAlcoholic;
  String? strGlass;
  String? strInstructions;
  dynamic strInstructionsEs;
  String? strInstructionsDe;
  dynamic strInstructionsFr;
  String? strInstructionsIt;
  dynamic strInstructionsZhHans;
  dynamic strInstructionsZhHant;
  String? strDrinkThumb;
  String? strIngredient1;
  String? strIngredient2;
  String? strIngredient3;
  String? strIngredient4;
  dynamic strIngredient5;
  dynamic strIngredient6;
  dynamic strIngredient7;
  dynamic strIngredient8;
  dynamic strIngredient9;
  dynamic strIngredient10;
  dynamic strIngredient11;
  dynamic strIngredient12;
  dynamic strIngredient13;
  dynamic strIngredient14;
  dynamic strIngredient15;
  String? strMeasure1;
  String? strMeasure2;
  String? strMeasure3;
  dynamic strMeasure4;
  dynamic strMeasure5;
  dynamic strMeasure6;
  dynamic strMeasure7;
  dynamic strMeasure8;
  dynamic strMeasure9;
  dynamic strMeasure10;
  dynamic strMeasure11;
  dynamic strMeasure12;
  dynamic strMeasure13;
  dynamic strMeasure14;
  dynamic strMeasure15;
  String? strImageSource;
  String? strImageAttribution;
  String? strCreativeCommonsConfirmed;
  String? dateModified;

  Details({
    this.idDrink,
    this.strDrink,
    this.strDrinkAlternate,
    this.strTags,
    this.strVideo,
    this.strCategory,
    this.strIba,
    this.strAlcoholic,
    this.strGlass,
    this.strInstructions,
    this.strInstructionsEs,
    this.strInstructionsDe,
    this.strInstructionsFr,
    this.strInstructionsIt,
    this.strInstructionsZhHans,
    this.strInstructionsZhHant,
    this.strDrinkThumb,
    this.strIngredient1,
    this.strIngredient2,
    this.strIngredient3,
    this.strIngredient4,
    this.strIngredient5,
    this.strIngredient6,
    this.strIngredient7,
    this.strIngredient8,
    this.strIngredient9,
    this.strIngredient10,
    this.strIngredient11,
    this.strIngredient12,
    this.strIngredient13,
    this.strIngredient14,
    this.strIngredient15,
    this.strMeasure1,
    this.strMeasure2,
    this.strMeasure3,
    this.strMeasure4,
    this.strMeasure5,
    this.strMeasure6,
    this.strMeasure7,
    this.strMeasure8,
    this.strMeasure9,
    this.strMeasure10,
    this.strMeasure11,
    this.strMeasure12,
    this.strMeasure13,
    this.strMeasure14,
    this.strMeasure15,
    this.strImageSource,
    this.strImageAttribution,
    this.strCreativeCommonsConfirmed,
    this.dateModified,
  });

  factory Details.fromJson(Map<String, dynamic> json) => Details(
        idDrink: json['idDrink'] as String?,
        strDrink: json['strDrink'] as String?,
        strDrinkAlternate: json['strDrinkAlternate'] as dynamic,
        strTags: json['strTags'] as String?,
        strVideo: json['strVideo'] as dynamic,
        strCategory: json['strCategory'] as String?,
        strIba: json['strIBA'] as String?,
        strAlcoholic: json['strAlcoholic'] as String?,
        strGlass: json['strGlass'] as String?,
        strInstructions: json['strInstructions'] as String?,
        strInstructionsEs: json['strInstructionsES'] as dynamic,
        strInstructionsDe: json['strInstructionsDE'] as String?,
        strInstructionsFr: json['strInstructionsFR'] as dynamic,
        strInstructionsIt: json['strInstructionsIT'] as String?,
        strInstructionsZhHans: json['strInstructionsZH-HANS'] as dynamic,
        strInstructionsZhHant: json['strInstructionsZH-HANT'] as dynamic,
        strDrinkThumb: json['strDrinkThumb'] as String?,
        strIngredient1: json['strIngredient1'] as String?,
        strIngredient2: json['strIngredient2'] as String?,
        strIngredient3: json['strIngredient3'] as String?,
        strIngredient4: json['strIngredient4'] as String?,
        strIngredient5: json['strIngredient5'] as dynamic,
        strIngredient6: json['strIngredient6'] as dynamic,
        strIngredient7: json['strIngredient7'] as dynamic,
        strIngredient8: json['strIngredient8'] as dynamic,
        strIngredient9: json['strIngredient9'] as dynamic,
        strIngredient10: json['strIngredient10'] as dynamic,
        strIngredient11: json['strIngredient11'] as dynamic,
        strIngredient12: json['strIngredient12'] as dynamic,
        strIngredient13: json['strIngredient13'] as dynamic,
        strIngredient14: json['strIngredient14'] as dynamic,
        strIngredient15: json['strIngredient15'] as dynamic,
        strMeasure1: json['strMeasure1'] as String?,
        strMeasure2: json['strMeasure2'] as String?,
        strMeasure3: json['strMeasure3'] as String?,
        strMeasure4: json['strMeasure4'] as dynamic,
        strMeasure5: json['strMeasure5'] as dynamic,
        strMeasure6: json['strMeasure6'] as dynamic,
        strMeasure7: json['strMeasure7'] as dynamic,
        strMeasure8: json['strMeasure8'] as dynamic,
        strMeasure9: json['strMeasure9'] as dynamic,
        strMeasure10: json['strMeasure10'] as dynamic,
        strMeasure11: json['strMeasure11'] as dynamic,
        strMeasure12: json['strMeasure12'] as dynamic,
        strMeasure13: json['strMeasure13'] as dynamic,
        strMeasure14: json['strMeasure14'] as dynamic,
        strMeasure15: json['strMeasure15'] as dynamic,
        strImageSource: json['strImageSource'] as String?,
        strImageAttribution: json['strImageAttribution'] as String?,
        strCreativeCommonsConfirmed:
            json['strCreativeCommonsConfirmed'] as String?,
        dateModified: json['dateModified'] as String?,
      );

  Map<String, dynamic> toJson() => {
        'idDrink': idDrink,
        'strDrink': strDrink,
        'strDrinkAlternate': strDrinkAlternate,
        'strTags': strTags,
        'strVideo': strVideo,
        'strCategory': strCategory,
        'strIBA': strIba,
        'strAlcoholic': strAlcoholic,
        'strGlass': strGlass,
        'strInstructions': strInstructions,
        'strInstructionsES': strInstructionsEs,
        'strInstructionsDE': strInstructionsDe,
        'strInstructionsFR': strInstructionsFr,
        'strInstructionsIT': strInstructionsIt,
        'strInstructionsZH-HANS': strInstructionsZhHans,
        'strInstructionsZH-HANT': strInstructionsZhHant,
        'strDrinkThumb': strDrinkThumb,
        'strIngredient1': strIngredient1,
        'strIngredient2': strIngredient2,
        'strIngredient3': strIngredient3,
        'strIngredient4': strIngredient4,
        'strIngredient5': strIngredient5,
        'strIngredient6': strIngredient6,
        'strIngredient7': strIngredient7,
        'strIngredient8': strIngredient8,
        'strIngredient9': strIngredient9,
        'strIngredient10': strIngredient10,
        'strIngredient11': strIngredient11,
        'strIngredient12': strIngredient12,
        'strIngredient13': strIngredient13,
        'strIngredient14': strIngredient14,
        'strIngredient15': strIngredient15,
        'strMeasure1': strMeasure1,
        'strMeasure2': strMeasure2,
        'strMeasure3': strMeasure3,
        'strMeasure4': strMeasure4,
        'strMeasure5': strMeasure5,
        'strMeasure6': strMeasure6,
        'strMeasure7': strMeasure7,
        'strMeasure8': strMeasure8,
        'strMeasure9': strMeasure9,
        'strMeasure10': strMeasure10,
        'strMeasure11': strMeasure11,
        'strMeasure12': strMeasure12,
        'strMeasure13': strMeasure13,
        'strMeasure14': strMeasure14,
        'strMeasure15': strMeasure15,
        'strImageSource': strImageSource,
        'strImageAttribution': strImageAttribution,
        'strCreativeCommonsConfirmed': strCreativeCommonsConfirmed,
        'dateModified': dateModified,
      };
}
