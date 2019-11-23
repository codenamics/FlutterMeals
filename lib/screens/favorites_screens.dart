import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:meals/widgets/meal_item.dart';

class FavoritesScreen extends StatelessWidget {
  final List<Meal> favoriteMeal;

  FavoritesScreen(this.favoriteMeal);
  @override
  Widget build(BuildContext context) {
    if(favoriteMeal.isEmpty){
return Center(
 child: Text('You have no favorites'),
    );
    }else{
     return ListView.builder(
        itemBuilder: (ctx, index) {
          return MealItem(
            id: favoriteMeal[index].id,
            title: favoriteMeal[index].title,
            affordability: favoriteMeal[index].affordability,
            imageURL: favoriteMeal[index].imageUrl,
            duration: favoriteMeal[index].duration,
            complexity: favoriteMeal[index].complexity,
       
          );
        },
        itemCount: favoriteMeal.length,
      );
    }
    
  }
}