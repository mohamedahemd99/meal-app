import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:meal_applicaion/dummy_data.dart';
import 'package:meal_applicaion/models/meal.dart';
import 'package:meal_applicaion/screens/category_screen.dart';
import 'package:meal_applicaion/screens/filter_screen.dart';
import 'package:meal_applicaion/screens/layout_screen.dart';
import 'package:meal_applicaion/screens/meal_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Map<String,bool> _filters={
    'gluten':false,
    'lactose':false,
    'vegan':false,
    'vegetarian ':false,
  };
  List<Meal> _avalableMeals = DUMMY_MEALS;

  void _setFilters(Map<String,bool>_filterData){
    setState(() {
      _filters=_filterData;

      _avalableMeals=DUMMY_MEALS.where((meal) {
        if(_filters['gluten']&& !meal.isGlutenFree){
          return false;
        }
        if(_filters['lactose']&& !meal.isLactoseFree){
          return false;
        }
        if(_filters['vegan']&& !meal.isVegan){
          return false;
        }
        if(_filters['vegetarian']&& !meal.isVegetarian){
          return false;
        }
        return true;
      }).toList();
    });
  }
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        textTheme: ThemeData.light().textTheme.copyWith(
          bodyText1: TextStyle(
            color:  Color.fromRGBO(20,50 ,50, 1),
          ),
          bodyText2: TextStyle(
            color:Color.fromRGBO(20, 50, 50, 1),
          ),
          subtitle1: TextStyle(
            fontSize: 20,
            fontFamily: "RobotoCondensed"
          ),
        ),
      ),
      routes: {
        '/':(ctx)=>LayoutScreen(),
        MealScreen.routeName:(context)=>MealScreen(avalableMeals: _avalableMeals),
        FilterScreen.routeName:(context)=>FilterScreen(saveFilter: _setFilters,),
      },
    );
  }
}
