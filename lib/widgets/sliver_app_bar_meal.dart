import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:recipies_app/models/meal_model.dart';
import 'package:recipies_app/style/color_theme.dart';

class SliverAppBarMeal extends StatelessWidget {
  final Meal selectedMeal;

  const SliverAppBarMeal({super.key, required this.selectedMeal});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      backgroundColor: ColorsTheme.primaryColor,
      leading: IconButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all(Colors.white),
          backgroundColor: MaterialStateProperty.all(ColorsTheme.primaryColor),
        ),
        icon: const Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      expandedHeight: MediaQuery.of(context).size.height * 0.32,
      floating: false,
      flexibleSpace: FlexibleSpaceBar(
        background: Hero(
          tag: selectedMeal.idMeal,
          child: CachedNetworkImage(
            imageUrl: selectedMeal.strMealThumb,
            fit: BoxFit.cover,
            placeholder: (context, url) => const SizedBox(
                height: 40, width: 40, child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => const Icon(Icons.error),
          ),
        ),
      ),
    );
  }
}
