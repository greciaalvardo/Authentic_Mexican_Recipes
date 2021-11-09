import 'package:authentic_mexican_recipes/models/recipe_info.dart';
import 'package:flutter/material.dart';
import 'map_category_info.dart';
import 'favorites.dart';
import 'package:google_fonts/google_fonts.dart';

class TabScreen extends StatefulWidget {
  final List<Meal> favoriteMeals;
  TabScreen(this.favoriteMeals);

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  List<Map<String, Object>> _screens;

  @override
  void initState(){
    _screens = [
      {'page': Categories(),
        'title': 'Food'},
      {'page': Favorites(widget.favoriteMeals),
        'title': 'Favorites'},
    ];
    super.initState();
  }

  int _selectedIndex = 0;
  void _selectPage(int index){
    setState((){
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Mexican Plates',
            style: GoogleFonts.abhayaLibre(fontSize:25,),
          ),
        ),
        body: _screens[_selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Colors.white,
        unselectedItemColor: Colors.black,
        elevation: 15,
        selectedItemColor: Theme.of(context).accentColor,
        currentIndex: _selectedIndex,
        items: [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.restaurant_outlined),
          title: Text('Food',
              style: GoogleFonts.abhayaLibre(fontSize:17,),),
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: Icon(Icons.favorite_outline),
            title: Text('Favorites',
                style: GoogleFonts.abhayaLibre(fontSize:17,),
            ),
          ),
        ],
      ),
      );
  }
}
