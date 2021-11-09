import 'package:flutter/material.dart';
import 'package:authentic_mexican_recipes/recipes.dart';
import 'package:google_fonts/google_fonts.dart';

class MealDetails extends StatelessWidget {
static const routeName = '/meal-detail';

final Function addFave;
final Function isFave;

MealDetails(this.addFave, this.isFave);

Widget getTitle(BuildContext context, String text){
  return Container(
    margin: EdgeInsets.symmetric(vertical: 10),
    child: Text(
      text,
        style: GoogleFonts.abhayaLibre(fontSize:25, fontWeight: FontWeight.w700),
    ),
  );
}



  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    final currMeal = CATEGORY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(title:
      Text('${currMeal.title}',
        style: GoogleFonts.abhayaLibre(fontSize:24,fontWeight: FontWeight.w500,),),
      ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            child: Column(
      children: <Widget>[
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                currMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(height: 10),
            getTitle(context, 'What You\'ll Need'),
            Container(
              child: ListView.builder
                (
                  shrinkWrap: true,
                  itemBuilder: (ctx, index) => Card(
                    color: Colors.white,
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 8,
                          horizontal: 15,
                        ),
                        child: Text(
                          currMeal.ingredients[index],
                        ),
                      ),
                  ),
                  itemCount: currMeal.ingredients.length,
                ),
            ),
        SizedBox(height:15),
            getTitle(context, 'How to Make It'),
            ListView.builder(
                shrinkWrap: true,
              itemBuilder: (ctx, index) => Column(
                children: [
                  ListTile(
                leading: CircleAvatar(child: Text(
                  '# ${(index + 1)}',
                      style: TextStyle(color: Colors.black,),
                ),
                  backgroundColor: Colors.white,
                ),
                title: Text(currMeal.steps[index],
              ),
              ),
                  Divider(),
              ],
              ),
              itemCount: currMeal.steps.length,
            ),
        SizedBox(
              width: 200.0,
              height: 100.0,
        ),
      ],
            ),
          ),
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          isFave(mealId) ? Icons.favorite : Icons.favorite_border_outlined,
        ),
        onPressed: () => addFave(mealId),
      ),
    );
  }
}
