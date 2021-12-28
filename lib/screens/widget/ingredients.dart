import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IngredientWidget extends StatelessWidget {
  final String name;
  const IngredientWidget({Key? key, required this.name}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0, bottom: 4.0),
      child: Row(
        children: [
          SizedBox(
            width: 50,
            height: 50,
            child: CachedNetworkImage(
                imageUrl:
                    'https://www.thecocktaildb.com/images/ingredients/$name-Small.png'),
          ),
          Text(name),
        ],
      ),
    );
  }
}
