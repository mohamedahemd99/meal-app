import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_applicaion/dummy_data.dart';
import 'package:meal_applicaion/models/meal.dart';
import 'package:meal_applicaion/widgets/meal_item.dart';

class MealScreen extends StatefulWidget {
  static const routeName = 'mealScreen';
  final String catId;
  final String title;
  final List<Meal> avalableMeals;

  MealScreen({this.catId, this.title, this.avalableMeals});

  @override
  State<MealScreen> createState() => _MealScreenState();
}

class _MealScreenState extends State<MealScreen> {
  @override
  Widget build(BuildContext context) {
    final categoryMeals = widget.avalableMeals.where((meal) {
      return meal.categories.contains(widget.catId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) => MealItem(
          title: categoryMeals[index].title,
          affordability: categoryMeals[index].affordability,
          complexity: categoryMeals[index].complexity,
          duration: categoryMeals[index].duration,
          imageUrl: categoryMeals[index].imageUrl,
          id: categoryMeals[index].id,
        ),
        itemCount: categoryMeals.length,
      ),
    );
  }
}
