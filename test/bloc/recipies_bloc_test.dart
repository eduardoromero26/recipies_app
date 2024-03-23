import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:recipies_app/bloc/recipies_bloc.dart';

void main() {
  blocTest<RecipiesBloc, RecipiesState>(
    'emits [loading, success] when successful',
    build: () => RecipiesBloc(),
    act: (bloc) => bloc.add(SearchMealByNameEvent(name: 'Arrabiata')),
    expect: () => [
      RecipiesState.loadingStarted(),
      isA<RecipiesState>(),
    ],
  );

  blocTest<RecipiesBloc, RecipiesState>(
    'emits [loading, failed] when unsuccessful',
    build: () => RecipiesBloc(),
    act: (bloc) => bloc.add(SearchMealByNameEvent(name: 'Not Existing Meal')),
    expect: () => [
      RecipiesState.loadingStarted(),
      isA<RecipiesState>(),
    ],
  );
}
