import 'package:authentic_mexican_recipes/models/recipe_info.dart';
import 'package:authentic_mexican_recipes/widgets/recipe_card.dart';
import 'package:flutter/material.dart';

class Favorites extends StatelessWidget {
  final List<Meal> favoriteMeals;

  Favorites(this.favoriteMeals);

  @override
  Widget build(BuildContext context) {
    if(favoriteMeals.isEmpty){
    return Center(
      child: Text(
        'Add favorites to display them here!'
      ),
    );
    } else{
      return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(title: favoriteMeals[index].title,
              id: favoriteMeals[index].id,
              imageUrl: favoriteMeals[index].imageUrl,
              duration: favoriteMeals[index].duration,
              );
        },
        itemCount: favoriteMeals.length,
      );
    }
  }
}
