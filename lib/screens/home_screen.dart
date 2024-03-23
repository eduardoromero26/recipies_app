import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipies_app/bloc/recipies_bloc.dart';
import 'package:recipies_app/models/categories_model.dart';
import 'package:recipies_app/models/meal_model.dart';
import 'package:sliver_tools/sliver_tools.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<RecipiesBloc>().add(FetchCategoriesEvent());
    context.read<RecipiesBloc>().add(SearchMealByNameEvent(name: 'egg'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
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
            }, loadedSuccess: (Map<String, dynamic>? meals, categories) {
              return MultiSliver(
                children: [
                  BlocBuilder<RecipiesBloc, RecipiesState>(
                      builder: (context, state) {
                    return SliverList.builder(
                      addAutomaticKeepAlives: true,
                      itemCount: categories?['categories'].length ?? 0,
                      itemBuilder: (BuildContext context, int index) {
                        final category = MealCategory.fromJson(
                            categories?['categories'][index]);
                        return ListTile(
                          contentPadding: const EdgeInsets.all(8),
                          title: Text(category.strCategory),
                          leading: Image.network(category.strCategoryThumb),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        );
                      },
                    );
                  }),
                  BlocBuilder<RecipiesBloc, RecipiesState>(
                      builder: (context, state) {
                    return SliverList.builder(
                      addAutomaticKeepAlives: true,
                      itemCount: meals?['meals'].length ?? 0,
                      itemBuilder: (BuildContext context, int index) {
                        final meal = Meal.fromJson(meals?['meals'][index]);
                        return ListTile(
                          title: Text(meal.strMeal),
                          subtitle: Text(meal.strCategory),
                          leading: Image.network(meal.strMealThumb),
                          trailing: const Icon(Icons.arrow_forward_ios),
                        );
                      },
                    );
                  }),
                ],
              );
            }, loadedFailed: (String message) {
              return Center(
                child: Text(message),
              );
            });
          },
        ),
      ],
    ));
  }
}
