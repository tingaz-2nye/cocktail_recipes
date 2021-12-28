import 'package:cocktails_recipes/provider/cocktail_provider.dart';
import 'package:cocktails_recipes/screens/category_screen.dart';
import 'package:cocktails_recipes/utils/locator.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  initLocator();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => locator<CocktailProvider>())
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CategoryScreen(),
    );
  }
}
