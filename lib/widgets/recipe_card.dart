import 'package:flutter/material.dart';
import 'package:authentic_mexican_recipes/screenbuilds/recipe_page.dart';
import 'package:google_fonts/google_fonts.dart';

class MealItem extends StatelessWidget {
  @required final String id;
  @required final String title;
  @required final String imageUrl;
  @required final int duration;
  @required final String cookMethods;

  MealItem({this.id, this.title, this.imageUrl, this.duration,this.cookMethods});

  void selectMeal(BuildContext context){
    Navigator.of(context).pushNamed(MealDetails.routeName,
    arguments: id,
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectMeal(context),
      child: Flexible(
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          elevation: 4,
          margin: EdgeInsets.all(10),
          child: Column(children: <Widget>[
            Stack(children: <Widget>[
              Container(
                height: 63,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey,
              ),
            ),
                child: ListTile(
                    leading: Column(children:<Widget>[
                      SizedBox(height: 10),
                      CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl),
                      radius: 23,
                    ),
        ],
                    ),
                  title: Text(title,
                    style: GoogleFonts.abhayaLibre(
                      fontSize:22,
                      fontWeight: FontWeight.w600,),
                  textAlign: TextAlign.center,),
                ),
              ),
            ],
            ),
            Padding(
              padding: EdgeInsets.all(14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Icon(Icons.schedule,),
                      SizedBox(width: 5,),
                      Text('$duration min'),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Icon(Icons.bakery_dining_outlined,),
                      SizedBox(width: 5,),
                      Text('$cookMethods'),
                    ],
                  ),
                ],
              ),
            ),
          ],
          ),
        ),
      ),
    );
  }
}

