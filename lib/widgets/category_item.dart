import 'package:authentic_mexican_recipes/screens/specific_meal_screen.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  final String id;
final String title;
final String pic;

CategoryItem(this.id, this.title, this.pic);

void selectCategory(BuildContext ctx){
  Navigator.of(ctx).pushNamed(SpecificMealScreen.routeName, arguments: {
    'id': id,
    'title': title,
    'pic': pic,
  });
}

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectCategory(context),
      splashColor: Theme.of(context).primaryColor,
      //borderRadius: BorderRadius.circular(15),
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          height: 110,
          padding: const EdgeInsets.all(20),
          child: Text(
            title,
            style:
            TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
              background: Paint()
                ..color = Colors.black.withOpacity(0.5),
            ),
            textAlign: TextAlign.right,
            //overflow: TextOverflow.fade,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(pic),
              fit: BoxFit.cover,
            ),
            border: Border.all(
              color: Colors.grey,
              width: 1,
            ),
          borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 8,
                offset: Offset(2, 8), // changes position of shadow
              ),
            ],
          ),
        ),
      ),
    );
  }
}
