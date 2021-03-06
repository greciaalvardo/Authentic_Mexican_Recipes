import 'package:flutter/foundation.dart';


class Meal {
  final String id;
  final List<String> categories;
  final String title;
  final String imageUrl;
  final List<String> ingredients;
  final List<String> steps;
  final int duration;
  final String cookMethods;




  const Meal(
      {@required this.id, @required this.categories, @required this.title, @required this.imageUrl,
        @required this.ingredients, @required this.steps, @required this.duration, @required this.cookMethods,});
}