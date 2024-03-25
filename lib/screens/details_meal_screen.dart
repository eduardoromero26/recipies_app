import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipies_app/bloc/recipies_bloc.dart';
import 'package:recipies_app/models/meal_model.dart';
import 'package:recipies_app/style/font_styles.dart';

class DetailsMealScreen extends StatefulWidget {
  final String mealId;
  final String imageUrl;
  const DetailsMealScreen(
      {super.key, required this.mealId, required this.imageUrl});

  @override
  State<DetailsMealScreen> createState() => _DetailsMealScreenState();
}

class _DetailsMealScreenState extends State<DetailsMealScreen> {
  @override
  void initState() {
    context.read<RecipiesBloc>().add(GetMealByIdEvent(id: widget.mealId));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          expandedHeight: 200.0,
          floating: false,
          flexibleSpace: FlexibleSpaceBar(
            background: Hero(
              tag: widget.mealId,
              child: CachedNetworkImage(
                imageUrl: widget.imageUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
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
                  child: CircularProgressIndicator(),
                ),
              );
            }, loadedSuccess: (MealsModel? meals) {
              return BlocBuilder<RecipiesBloc, RecipiesState>(
                  builder: (context, state) {
                return SliverToBoxAdapter(
                  child: context.read<RecipiesBloc>().selectedMeal.meals != null
                      ? Column(
                          children: [
                            Text(
                                context
                                    .read<RecipiesBloc>()
                                    .selectedMeal
                                    .meals![0]
                                    .strMeal,
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
