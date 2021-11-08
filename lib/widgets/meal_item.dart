import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:meal_applicaion/models/meal.dart';
import 'package:meal_applicaion/screens/meal_details.dart';
import 'package:meal_applicaion/widgets/category_item.dart';

class MealItem extends StatelessWidget {
  final String title;
  final String imageUrl;
  final String id;
  final int duration;
  final Complexity complexity  ;
  final Affordability affordability;

  MealItem(
      {
      @required this.title,
      @required this.imageUrl,
      @required this.duration,
      @required this.complexity,
      @required this.id,
      @required this.affordability});

  String get complexityText{
    switch(complexity){
      case Complexity.Simple:
        return "Simple";
        break;
      case Complexity.Challenging:
        return "Challenging";
        break;
      case Complexity.Hard:
        return "Hard";
        break;
    }
  }
  String get affordabilityText{
    switch(affordability){
      case Affordability.Affordable:
        return "Affordable";
        break;
      case Affordability.Luxurious:
        return "Luxurious";
        break;
      case Affordability.Pricey:
        return "Pricey";
        break;
    }
  }
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        navigateTo(context, MealDetailsScreen(mealId: id,));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 4.0,
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft:Radius.circular(15),
                      topRight:Radius.circular(15),
                  ),
                  child: Image.network(imageUrl,height: 200,width: double.infinity,fit: BoxFit.cover,)
                ),
                Positioned(
                  bottom: 20,
                    right: 10,

                    child:Container(
                      color: Colors.black45,
                      padding: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                      child: Text(title,style: Theme.of(context).textTheme.subtitle1.copyWith(color: Colors.white),softWrap:true ,overflow: TextOverflow.fade,),
                    )
                ),
                // Text(title,style: Theme.of(context).textTheme.headline3,)
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        Icon(Icons.schedule_outlined),
                        SizedBox(width: 5,),
                        Text("${duration.toString()} min",style: Theme.of(context).textTheme.caption.copyWith(fontSize: 15,fontWeight: FontWeight.bold),)
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Icon(Icons.work),
                        SizedBox(width: 5,),
                        Expanded(child: Text(complexityText,style: Theme.of(context).textTheme.caption.copyWith(fontSize: 15,fontWeight: FontWeight.bold,),))
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        Icon(Icons.attach_money_outlined),
                        SizedBox(width: 5,),
                        Expanded(child: Text(affordabilityText,style: Theme.of(context).textTheme.caption.copyWith(fontSize: 15,fontWeight: FontWeight.bold),))
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
