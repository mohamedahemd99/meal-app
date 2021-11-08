
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:meal_applicaion/screens/meal_screen.dart';

class CategoryItem extends StatelessWidget {
  final String title;
  final Color color;
  final String id;

  CategoryItem({ this.id,this.title, this.color,}) ;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        navigateTo(context, MealScreen(catId: id,title: title,));
      },
      borderRadius: BorderRadius.circular(10),
      splashColor: Theme.of(context).primaryColor,
      child: Container(
        child: Center(child: Text(title)),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
              colors:[
                color.withOpacity(0.6),
                color,
              ],
            begin:Alignment.topLeft ,
            end: Alignment.bottomRight,
          )
        ),
      ),
    ) ;
  }
}
void navigateTo(context,widget)=> Navigator.push(context,MaterialPageRoute(builder: (context) => widget,));
