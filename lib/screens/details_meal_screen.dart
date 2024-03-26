import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:recipies_app/bloc/recipies_bloc.dart';
import 'package:recipies_app/models/meal_model.dart';
import 'package:recipies_app/style/color_theme.dart';
import 'package:recipies_app/style/font_styles.dart';

class DetailsMealScreen extends StatefulWidget {
  final Meal selectedMeal;
  const DetailsMealScreen({super.key, required this.selectedMeal});

  @override
  State<DetailsMealScreen> createState() => _DetailsMealScreenState();
}

class _DetailsMealScreenState extends State<DetailsMealScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: ColorsTheme.primaryColor,
          leading: IconButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.white),
              backgroundColor:
                  MaterialStateProperty.all(ColorsTheme.primaryColor),
            ),
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          expandedHeight: MediaQuery.of(context).size.height * 0.4,
          floating: false,
          flexibleSpace: FlexibleSpaceBar(
            background: Hero(
              tag: widget.selectedMeal.idMeal,
              child: CachedNetworkImage(
                imageUrl: widget.selectedMeal.strMealThumb,
                fit: BoxFit.cover,
                placeholder: (context, url) => const SizedBox(
                    height: 40, width: 40, child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: widget.selectedMeal.strMeal.isNotEmpty
              ? Column(
                  children: [
                    Text(widget.selectedMeal.strMeal,
                        style: TypographyTheme.fontSemi20Px),
                    const SizedBox(height: 1000),
                  ],
                )
              : const Text('Meal not found'),
        ),
      ],
    ));
  }
}
