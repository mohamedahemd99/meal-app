import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:meal_applicaion/screens/category_screen.dart';
import 'package:meal_applicaion/screens/filter_screen.dart';
import 'package:meal_applicaion/screens/layout_screen.dart';
import 'package:meal_applicaion/widgets/category_item.dart';

class MainDrawer extends StatelessWidget {

  Widget buildListTile(IconData icon,String title,Function function){
    return ListTile(
      leading: Icon(icon),
      title: Text(title,style: TextStyle(fontSize: 24,fontFamily:"RobotoCondensed",fontWeight: FontWeight.bold),),
      onTap: function,
    );
  }
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            color: Theme.of(context).accentColor,
            width: double.infinity,
            height: 120,
            alignment: Alignment.centerLeft,
            child: Text("Cooking Up!",style: Theme.of(context).textTheme.headline4.copyWith(color: Theme.of(context).primaryColor,fontWeight: FontWeight.w900),),
          ),
          SizedBox(height: 20,),
          buildListTile(Icons.restaurant, "Meal", (){navigateTo(context, LayoutScreen());}),
          buildListTile(Icons.settings, "Filter", (){navigateTo(context, FilterScreen());})
        ],
      ),
    );
  }
}
