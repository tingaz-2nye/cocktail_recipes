import 'package:cocktails_recipes/provider/cocktail_provider.dart';
import 'package:cocktails_recipes/screens/cocktails_screen.dart';
import 'package:cocktails_recipes/utils/api_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Categories'),
      ),
      body: Center(
          child: Consumer<CocktailProvider>(builder: (_, categories, __) {
        switch (categories.categories.status) {
          case Status.LOADING:
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const CircularProgressIndicator(),
                  Text('Loading My Categories...',
                      style: Theme.of(context).textTheme.bodyText1)
                ],
              ),
            );
          case Status.ERROR:
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [],
            );
          case Status.COMPLETED:
            var cat = categories.categories.data;
            return ListView.builder(
                itemCount: cat!.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('${cat[index].strCategory}'),
                    trailing: const Icon(Icons.wine_bar),
                    onTap: () => {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => CocktailScreens(
                                    type: cat[index].strCategory.toString(),
                                  )))
                    },
                  );
                });
          default:
            return Container();
        }
      })),
    );
  }
}
