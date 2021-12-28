import 'package:cocktails_recipes/api/api_base.dart';
import 'package:cocktails_recipes/provider/cocktail_provider.dart';
import 'package:cocktails_recipes/service/cocktail_service.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void initLocator() {
  locator.registerLazySingleton(() => ApiBaseHelper());
  locator.registerLazySingleton(() => CocktailService());
  locator.registerLazySingleton(() => CocktailProvider());
}
