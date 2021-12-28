import 'package:cached_network_image/cached_network_image.dart';
import 'package:cocktails_recipes/provider/cocktail_provider.dart';
import 'package:cocktails_recipes/screens/widget/ingredients.dart';
import 'package:cocktails_recipes/utils/api_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CocktailDetailsScreen extends StatefulWidget {
  final String id;
  final String name;
  const CocktailDetailsScreen({Key? key, required this.id, required this.name})
      : super(key: key);

  @override
  _CocktailDetailsScreenState createState() => _CocktailDetailsScreenState();
}

class _CocktailDetailsScreenState extends State<CocktailDetailsScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<CocktailProvider>(context, listen: false)
        .getCocktailDetails(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text(widget.name)),
        body: SafeArea(
          child: Container(
            margin: const EdgeInsets.fromLTRB(20, 10, 20, 20),
            child: Consumer<CocktailProvider>(
              builder: (_, details, __) {
                switch (details.cocktailDetails.status) {
                  case Status.LOADING:
                    return Center(
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const <Widget>[
                            CircularProgressIndicator()
                          ]),
                    );
                  case Status.ERROR:
                    return Center(
                      child: Text(details.cocktailDetails.message.toString()),
                    );
                  case Status.COMPLETED:
                    var detailData = details.cocktailDetails.data;
                    return ListView.builder(
                      itemCount: detailData!.length,
                      itemBuilder: (_, index) {
                        var detail = detailData[index];
                        return Column(
                          children: [
                            SizedBox(
                                height: 300,
                                width: MediaQuery.of(context).size.width,
                                child: CachedNetworkImage(
                                  imageUrl: detail.strDrinkThumb.toString(),
                                  fit: BoxFit.fill,
                                )),
                            Text(
                              detail.strDrink.toString().toUpperCase(),
                              style: const TextStyle(fontSize: 24),
                            ),
                            const Text('Ingredients'),
                            Column(
                              children: [
                                detail.strIngredient1 != null
                                    ? IngredientWidget(
                                        name: detail.strIngredient1.toString())
                                    : const SizedBox(),
                                detail.strIngredient2 != null
                                    ? IngredientWidget(
                                        name: detail.strIngredient2.toString())
                                    : const SizedBox(),
                                detail.strIngredient3 != null
                                    ? IngredientWidget(
                                        name: detail.strIngredient3.toString())
                                    : const SizedBox(),
                                detail.strIngredient4 != null
                                    ? IngredientWidget(
                                        name: detail.strIngredient4.toString())
                                    : const SizedBox(),
                                detail.strIngredient5 != null
                                    ? IngredientWidget(
                                        name: detail.strIngredient5.toString())
                                    : const SizedBox(),
                                detail.strIngredient6 != null
                                    ? IngredientWidget(
                                        name: detail.strIngredient6.toString())
                                    : const SizedBox(),
                                detail.strIngredient7 != null
                                    ? IngredientWidget(
                                        name: detail.strIngredient7.toString())
                                    : const SizedBox(),
                                detail.strIngredient8 != null
                                    ? IngredientWidget(
                                        name: detail.strIngredient8.toString())
                                    : const SizedBox(),
                                detail.strIngredient9 != null
                                    ? IngredientWidget(
                                        name: detail.strIngredient9.toString())
                                    : const SizedBox(),
                                detail.strIngredient10 != null
                                    ? IngredientWidget(
                                        name: detail.strIngredient10.toString())
                                    : const SizedBox(),
                                detail.strIngredient11 != null
                                    ? IngredientWidget(
                                        name: detail.strIngredient11.toString())
                                    : const SizedBox(),
                                detail.strIngredient12 != null
                                    ? IngredientWidget(
                                        name: detail.strIngredient12.toString())
                                    : const SizedBox(),
                                detail.strIngredient13 != null
                                    ? IngredientWidget(
                                        name: detail.strIngredient13.toString())
                                    : const SizedBox(),
                                detail.strIngredient14 != null
                                    ? IngredientWidget(
                                        name: detail.strIngredient14.toString())
                                    : const SizedBox(),
                                detail.strIngredient15 != null
                                    ? IngredientWidget(
                                        name: detail.strIngredient15.toString())
                                    : const SizedBox(),
                              ],
                            ),
                            const Text('Instructions'),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: Text(detail.strInstructions.toString()),
                            )
                          ],
                        );
                      },
                    );
                  default:
                    return Container();
                }
              },
            ),
          ),
        ));
  }
}
