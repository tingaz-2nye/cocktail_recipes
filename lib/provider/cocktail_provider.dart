import 'package:cocktails_recipes/api/api_base.dart';
import 'package:cocktails_recipes/model/categories/drink.dart';
import 'package:cocktails_recipes/model/cocktail_details/drink.dart';
import 'package:cocktails_recipes/model/cocktails/drink.dart';
import 'package:cocktails_recipes/service/cocktail_service.dart';
import 'package:cocktails_recipes/utils/api_response.dart';
import 'package:cocktails_recipes/utils/locator.dart';
import 'package:flutter/cupertino.dart';

class CocktailProvider extends ChangeNotifier {
  final CocktailService _api = locator<CocktailService>();
  ApiResponse<List<Drink>> _categories = ApiResponse.loading('');
  ApiResponse<List<CocktailDrink>> _cocktail = ApiResponse.loading('');
  ApiResponse<List<Details>> _cocktailDetails = ApiResponse.loading('');

  ApiResponse<List<Drink>> get categories => _categories;
  ApiResponse<List<CocktailDrink>> get cocktail => _cocktail;
  ApiResponse<List<Details>> get cocktailDetails => _cocktailDetails;

  CocktailProvider() {
    getCategories();
  }

  getCategories() async {
    _categories = ApiResponse.loading('loading Categories');
    try {
      List<Drink> data = await _api.getCategories();
      _categories = ApiResponse.completed(data);
    } catch (e) {
      _categories = ApiResponse.error(e.toString());
    }
    notifyListeners();
  }

  getCocktails(type) async {
    _cocktail = ApiResponse.loading('loading Categories');
    try {
      List<CocktailDrink> data = await _api.getCocktails(type);
      _cocktail = ApiResponse.completed(data);
    } catch (e) {
      _cocktail = ApiResponse.error(e.toString());
    }
    notifyListeners();
  }

  getCocktailDetails(id) async {
    _cocktailDetails = ApiResponse.loading('loading Categories');
    try {
      List<Details> data = await _api.getCocktailDetails(id);
      _cocktailDetails = ApiResponse.completed(data);
    } catch (e) {
      _cocktailDetails = ApiResponse.error(e.toString());
    }
    notifyListeners();
  }
}
