import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meal_applicaion/cubit/states.dart';
import 'package:meal_applicaion/models/meal.dart';

import '../dummy_data.dart';

class MealsCubit extends Cubit<MealStates>{
  MealsCubit() : super(MealInitialStates());
  static MealsCubit get(context) => BlocProvider.of(context);

  bool glutenFree = false;
  bool vegan = false;
  bool vegetarian = false;
  bool lactoseFree = false;

  Map<String,bool> filters={
    'gluten':false,
    'lactose':false,
    'vegan':false,
    'vegetarian ':false,
  };
  List<Meal> avalableMeals = DUMMY_MEALS;

  void setFilters(Map<String,bool>filterData){
      try{
        filters=filterData;
        avalableMeals=DUMMY_MEALS.where((meal) {
          if(filters['gluten']&& !meal.isGlutenFree){
            return false;
          }
          if(filters['lactose']&& !meal.isLactoseFree){
            return false;
          }
          if(filters['vegan']&& !meal.isVegan){
            return false;
          }
          if(filters['vegetarian']&& !meal.isVegetarian){
            return false;
          }
          return true;
        }).toList();
        emit(MealSetFiltersSuccessStates());
      }
      catch(error){
        print(error.toString());
        emit(MealSetFiltersErrorStates());

      }

  }
}