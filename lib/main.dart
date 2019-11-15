import 'package:flutter/material.dart';
import 'package:meals/categories_screen.dart';
import 'package:meals/category_meals_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            title: TextStyle(
                fontSize: 24,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold)),
      ),
      home: CategoriesScreen(),
      routes: {
       CategoryMealsScreen.routeName: (ctx) => CategoryMealsScreen()
      },
    );
  }
}