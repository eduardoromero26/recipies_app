import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
                placeholder: (context, url) => SizedBox(
                    height: 40,
                    width: 40,
                    child: const CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
          ),
        ),
        BlocConsumer<RecipiesBloc, RecipiesState>(
          listener: (BuildContext context, RecipiesState state) {},
          builder: (context, state) {
            return state.when(initial: () {
              return const SliverFillRemaining(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }, loadingStarted: () {
              return const SliverFillRemaining(
                child: Center(
                  child: SizedBox(
                    width: 100.0,
                    height: 100.0,
                    child: CircularProgressIndicator(
                      strokeWidth: 6.0,
                    ),
                  ),
                ),
              );
            }, loadedSuccess: (MealsModel? meals) {
              return BlocBuilder<RecipiesBloc, RecipiesState>(
                  builder: (context, state) {
                return SliverToBoxAdapter(
                  child: widget.selectedMeal.strMeal.isNotEmpty
                      ? Column(
                          children: [
                            Text(widget.selectedMeal.strMeal,
                                style: TypographyTheme.fontSemi20Px),
                            SizedBox(height: 1000),
                          ],
                        )
                      : const Text('Meal not found'),
                );
              });
            }, loadedFailed: (String message) {
              return const SliverFillRemaining(
                child: Center(
                  child: Text('ERROR STATE'),
                ),
              );
            });
          },
        ),
      ],
    ));
  }
}
