import 'package:flutter/material.dart';
import 'package:authentic_mexican_recipes/category_data.dart';
import 'package:authentic_mexican_recipes/widgets/category_item.dart';
//this is the categories screen

class Categories extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ListView(
          padding: const EdgeInsets.all(25),
          children: CATEGORIES.map((catData) => CategoryItem(
            catData.id,
            catData.title,
            catData.pic,
          )).toList(),
    );
  }
}
