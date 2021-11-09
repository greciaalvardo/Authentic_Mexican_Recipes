import 'package:authentic_mexican_recipes/widgets/meal_item.dart';
import 'package:flutter/material.dart';
import 'package:authentic_mexican_recipes/category_data.dart';
import 'package:google_fonts/google_fonts.dart';

class SpecificMealScreen extends StatelessWidget {
  static const routeName = 'categories';

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryMeals = CATEGORY_MEALS.where((meal){
      return meal.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle,
            style: GoogleFonts.abhayaLibre(fontSize:25,)),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(title: categoryMeals[index].title,
          id: categoryMeals[index].id,
          imageUrl: categoryMeals[index].imageUrl,
          duration: categoryMeals[index].duration,
          cookMethods: categoryMeals[index].cookMethods,);
        },
        itemCount: categoryMeals.length,
      ),
    );
  }
}
