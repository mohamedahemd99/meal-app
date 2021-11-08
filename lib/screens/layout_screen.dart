import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_applicaion/screens/category_screen.dart';
import 'package:meal_applicaion/screens/favorite_Screen.dart';
import 'package:meal_applicaion/widgets/main_drawer.dart';

class LayoutScreen extends StatefulWidget {
  @override
  _LayoutScreenState createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {

  final List<Widget> _page=[
    CategoryScreen(),
    FavoritesScreen()
  ];

  int _selectedPage =0;
  void _selectPage(int index){
    setState(() {
      _selectedPage =index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:_selectedPage==0? Text("Categories"):Text("Your Favorites")),
      body: _page[_selectedPage],
      bottomNavigationBar:BottomNavigationBar(
        onTap:(value) => _selectPage(value) ,
          backgroundColor: Theme.of(context).primaryColor,
          selectedItemColor: Theme.of(context).accentColor,
          unselectedItemColor: Colors.white,
          currentIndex: _selectedPage,
          items:[
            BottomNavigationBarItem(
              icon: Icon(Icons.category),
              title: Text("Category"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text("favorites"),
            ),
          ]
      ) ,
      drawer: MainDrawer(),
    );
  }
}
