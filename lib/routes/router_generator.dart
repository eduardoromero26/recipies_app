import 'package:flutter/material.dart';
import 'package:recipies_app/models/meal_model.dart';
import 'package:recipies_app/screens/details_meal_screen.dart';
import 'package:recipies_app/screens/home_screen.dart';
import 'package:recipies_app/utils/route_screens.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouteScreens.home:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case RouteScreens.details:
        final args = settings.arguments as Meal;
        return MaterialPageRoute(
          builder: (_) => DetailsMealScreen(
            mealId: args.idMeal,
            imageUrl: args.strMealThumb,
          ),
        );
      default:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      // return MaterialPageRoute(builder: (_) => ErrorScreen());
    }
  }
}
