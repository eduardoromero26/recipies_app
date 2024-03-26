import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipies_app/bloc/recipies_bloc.dart';
import 'package:recipies_app/models/meal_model.dart';
import 'package:recipies_app/widgets/lotties/empty_search_lottie_view.dart';
import 'package:recipies_app/widgets/lotties/error_lottie_view.dart';
import 'package:recipies_app/widgets/lotties/loading_lottie_view.dart';
import 'package:recipies_app/widgets/meals_bloc_builder.dart';
import 'package:recipies_app/widgets/search_text_field.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<RecipiesBloc>().add(SearchMealByNameEvent(name: ''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: CustomScrollView(
        slivers: <Widget>[
          const SearchTextField(),
          BlocConsumer<RecipiesBloc, RecipiesState>(
            listener: (BuildContext context, RecipiesState state) {},
            builder: (context, state) {
              return state.when(initial: () {
                return const LoadingLottieView();
              }, loadingStarted: () {
                return const LoadingLottieView();
              }, loadedSuccess: (MealsModel? meals) {
                return context.read<RecipiesBloc>().mealList!.meals!.isNotEmpty
                    ? const MealsBlocBuilder()
                    : const EmptySearchLottieView();
              }, loadedFailed: (String message) {
                return const ErrorLottieView();
              });
            },
          ),
        ],
      )),
    );
  }
}
