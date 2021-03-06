import 'package:cocktails_recipes/api/api_base.dart';
import 'package:cocktails_recipes/model/categories/categories.dart';
import 'package:cocktails_recipes/model/categories/drink.dart';
import 'package:cocktails_recipes/model/cocktail_details/cocktail_details.dart';
import 'package:cocktails_recipes/model/cocktail_details/drink.dart';
import 'package:cocktails_recipes/model/cocktails/cocktails.dart';
import 'package:cocktails_recipes/model/cocktails/drink.dart';
import 'package:cocktails_recipes/utils/locator.dart';

class CocktailService {
  final _api = locator<ApiBaseHelper>();

  Future<List<Drink>> getCategories() async {
    var url = 'list.php?c=list';
    var response = await _api.get(url, {});

    var data = Categories.fromJson(response).drinks;

    return data;
  }

  Future<List<CocktailDrink>> getCocktails(type) async {
    var url = 'filter.php?c=$type';
    var response = await _api.get(url, {});

    var data = Cocktails.fromJson(response).drinks;

    for (var element in data) {
      print(element.strDrink);
    }
    return data;
  }

  Future<List<Details>> getCocktailDetails(id) async {
    var url = 'lookup.php?i=$id';
    var response = await _api.get(url, {});

    var data = CocktailDetails.fromJson(response).details;

    for (var element in data) {
      print(element.strIngredient1);
    }
    return data;
  }
}
