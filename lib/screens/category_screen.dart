import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_applicaion/dummy_data.dart';
import 'package:meal_applicaion/widgets/category_item.dart';

class CategoryScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView(
        padding: EdgeInsets.all(25),
          children: DUMMY_CATEGORIES.map((e) =>CategoryItem(
            title: e.title,
            color: e.color,
            id: e.id,
          ),).toList(),
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent:200,
            childAspectRatio: 3/2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20
          )
      ),
    );
  }
}
