import 'package:flutter/material.dart';
import '../components/meal_item.dart';
import '../models/meal.dart';

class FavoriteScreen extends StatelessWidget {
  final List<Meal> favoriteMeal;
  const FavoriteScreen(this.favoriteMeal);
  @override
  Widget build(BuildContext context) {
    if (favoriteMeal.isEmpty) {
      return Center(
        child: Text('Nenhuma refeições foi marcada como favoritas!'),
      );
    } else {
      return ListView.builder(
        itemCount: favoriteMeal.length,
        itemBuilder: (cxt, index) {
          return MealItem(favoriteMeal[index]);
        },
      );
    }
  }
}
