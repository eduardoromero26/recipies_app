import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:recipies_app/bloc/recipies_bloc.dart';

void main() async {
  await dotenv.load(fileName: "assets/env/.env.dev");

  blocTest<RecipiesBloc, RecipiesState>(
    'emits [loading, success] when successful when search meal by name bloc',
    build: () => RecipiesBloc(),
    act: (bloc) => bloc.add(SearchMealByNameEvent(name: 'Arrabiata')),
    expect: () => [
      RecipiesState.loadingStarted(),
      isA<RecipiesState>().having(
        (state) => state.toString().contains('MealsModel(meals: [MealModel('),
        'Loaded success with meals',
        true,
      ),
    ],
  );
}
