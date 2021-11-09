// @dart=2.9
import 'package:authentic_mexican_recipes/screens/meal_details.dart';
import 'package:authentic_mexican_recipes/screens/specific_meal_screen.dart';
import 'package:authentic_mexican_recipes/screens/tab.dart';
import 'package:flutter/material.dart';
import 'package:authentic_mexican_recipes/screens/categories.dart';

import 'category_data.dart';
import 'models/meal.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Meal> _favoriteMeals =[];

  void _toggleFavorite(String mealId){
    final existingIndex = _favoriteMeals.indexWhere((meal) => meal.id == mealId);
    if(existingIndex >= 0){
      setState(() {
        _favoriteMeals.removeAt(existingIndex);
      });
    } else{
      setState((){
        _favoriteMeals.add(CATEGORY_MEALS.firstWhere((meal) => meal.id == mealId),);
      });
    }
  }

  bool _isFave(String id){
    return _favoriteMeals.any((meal) => meal.id == id);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     // title: 'DeliMeals',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.red,
        canvasColor: Color.fromRGBO(242, 250, 244,1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          bodyText2: TextStyle(
            color: Color.fromRGBO(20, 51, 51, 1),
          ),
          headline6: TextStyle(
            fontSize: 20,
            fontFamily: 'RobotoCondensed',
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: TabScreen(_favoriteMeals),
      routes: {
        SpecificMealScreen.routeName: (ctx) => SpecificMealScreen(),
        MealDetails.routeName: (ctx) => MealDetails(_toggleFavorite, _isFave),
      },
      onGenerateRoute: (settings) {
        print(settings.arguments);
     //   return MaterialPageRoute(builder: (ctx) => Categories(),);
      },
      onUnknownRoute: (settings){
        return MaterialPageRoute(builder: (ctx) => Categories(),);
      },
    );
  }
}
