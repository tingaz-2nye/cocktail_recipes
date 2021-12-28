import 'package:cached_network_image/cached_network_image.dart';
import 'package:cocktails_recipes/provider/cocktail_provider.dart';
import 'package:cocktails_recipes/screens/cocktail_details.dart';
import 'package:cocktails_recipes/utils/api_response.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CocktailScreens extends StatefulWidget {
  final String type;
  const CocktailScreens({Key? key, required this.type}) : super(key: key);

  @override
  _CocktailScreensState createState() => _CocktailScreensState();
}

class _CocktailScreensState extends State<CocktailScreens> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<CocktailProvider>(context, listen: false)
        .getCocktails(widget.type);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.type),
      ),
      body: SafeArea(
        child: Consumer<CocktailProvider>(builder: (_, cocktail, __) {
          switch (cocktail.cocktail.status) {
            case Status.LOADING:
              return Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [CircularProgressIndicator()],
                ),
              );
            case Status.ERROR:
              return Center(
                child: Text(cocktail.cocktail.message.toString()),
              );
            case Status.COMPLETED:
              var data = cocktail.cocktail.data;
              return ListView.builder(
                  itemCount: data!.length,
                  itemBuilder: (_, index) {
                    return ListTile(
                      leading: SizedBox(
                        height: 50,
                        width: 50,
                        child: CachedNetworkImage(
                          imageUrl: data[index].strDrinkThumb.toString(),
                        ),
                      ),
                      title: Text(data[index].strDrink.toString()),
                      onTap: () => {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => CocktailDetailsScreen(
                                    id: data[index].idDrink.toString(),
                                    name: data[index].strDrink.toString())))
                      },
                    );
                  });
            default:
              return Container();
          }
        }),
      ),
    );
  }
}
