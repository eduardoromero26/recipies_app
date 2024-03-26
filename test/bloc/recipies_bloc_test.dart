import 'package:bloc_test/bloc_test.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:recipies_app/bloc/recipies_bloc.dart';
import 'package:recipies_app/models/meal_model.dart';
import 'package:recipies_app/services/base_api.dart';
import 'package:recipies_app/utils/endpoints.dart';

import 'recipies_bloc_test.mocks.dart';

@GenerateMocks([BaseApi])
void main() {
  group('RecipiesBloc ', () {
    late RecipiesBloc recipiesBloc;
    late MockBaseApi mockApi;

    setUp(() {
      mockApi = MockBaseApi();
      recipiesBloc = RecipiesBloc(mockApi);
    });

    blocTest<RecipiesBloc, RecipiesState>(
      'emits [loadingStarted, loadedSuccess] when SearchMealByNameEvent is added and api call is successful',
      build: () => recipiesBloc,
      act: (bloc) {
        when(mockApi.getFromApi('${Endpoints.searchMealByName}test'))
            .thenAnswer(
          (_) async => Response(
            data: {'meals': []},
            statusCode: 200,
            requestOptions:
                RequestOptions(path: '${Endpoints.searchMealByName}test'),
          ),
        );
        bloc.add(SearchMealByNameEvent(name: 'test'));
      },
      expect: () => [
        RecipiesState.loadingStarted(),
        RecipiesState.loadedSuccess(
            // ignore: unnecessary_const
            MealsModel.fromJson(const {'meals': const []})),
      ],
    );

    blocTest<RecipiesBloc, RecipiesState>(
      'emits [loadingStarted, loadedFailed] when SearchMealByNameEvent is added and api call fails',
      build: () => recipiesBloc,
      act: (bloc) {
        when(mockApi.getFromApi('${Endpoints.searchMealByName}test'))
            .thenThrow(DioException(
          requestOptions:
              RequestOptions(path: '${Endpoints.searchMealByName}test'),
          error: 'Error occurred',
        ));
        bloc.add(SearchMealByNameEvent(name: 'test'));
      },
      expect: () => [
        RecipiesState.loadingStarted(),
        RecipiesState.loadedFailed(
            'DioException [unknown]: null\nError: Error occurred'),
      ],
    );

    blocTest<RecipiesBloc, RecipiesState>(
      'emits no state when ResetSearchControllerEvent is added',
      build: () => recipiesBloc,
      act: (bloc) => bloc.add(ResetSearchControllerEvent()),
      expect: () => [],
    );
  });
}
