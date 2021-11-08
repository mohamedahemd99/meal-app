
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../dummy_data.dart';

class MealDetailsScreen extends StatelessWidget {
  String mealId;
  MealDetailsScreen({this.mealId});

  Widget buildSectionTitle(context,String text)=>Text(text,style: Theme.of(context).textTheme.subtitle1.copyWith(fontWeight: FontWeight.bold),);
  Widget buildContainer(Widget child){
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey)
      ),
      height: 150,
      width: 300,
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.all(10),
      child: child
    );

  }

  @override
  Widget build(BuildContext context) {
    var selectedItem=DUMMY_MEALS.firstWhere((meal) =>meal.id==mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectedItem.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if(selectedItem.imageUrl !=null)
              Image(image: NetworkImage(selectedItem.imageUrl)),
            SizedBox(height: 10,),
            buildSectionTitle(context,'Ingredients'),
            SizedBox(height: 10,),
            buildContainer(ListView.builder(
                itemBuilder:(context, index) => Card(
                  color: Theme.of(context).accentColor,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(selectedItem.ingredients[index],style: Theme.of(context).textTheme.subtitle2,),
                  ),
                ),
                itemCount: selectedItem.ingredients.length,

              ),),
            SizedBox(height: 10,),
            buildSectionTitle(context,'Steps'),
            SizedBox(height: 10,),

            buildContainer(ListView.separated(
                itemBuilder:(context, index) =>ListTile(
                  leading: CircleAvatar(
                    child: Text('#${index+1}'),
                  ),
                  title: Text(selectedItem.steps[index],style: Theme.of(context).textTheme.subtitle2),
                ),
                separatorBuilder: (context, index) => Divider(height: 1,thickness: 2,),
                itemCount: selectedItem.steps.length,

              ),),
          ],
        ),
      ),
    );
  }
}
