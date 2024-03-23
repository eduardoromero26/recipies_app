import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipies_app/models/categories_model.dart';
import 'package:recipies_app/models/meal_model.dart';
import 'package:recipies_app/services/base_api.dart';
import 'package:recipies_app/utils/endpoints.dart';

part 'recipies_event.dart';
part 'recipies_state.dart';
part 'recipies_bloc.freezed.dart';

class RecipiesBloc extends Bloc<RecipiesEvent, RecipiesState> {
  final BaseApi _baseApi = BaseApi();

  RecipiesBloc() : super(RecipiesState.initial()) {
    on<FetchCategoriesEvent>((event, emit) async {
      emit(RecipiesState.loadingStarted());
      try {
        final categories =
            await _baseApi.getFromApi(Endpoints.getMealCategories);
        emit(RecipiesState.loadedSuccess(null, categories));
      } catch (e) {
        emit(RecipiesState.loadedFailed(e.toString()));
      }
    });

    on<GetMealByCategoryEvent>((event, emit) async {
      emit(RecipiesState.loadingStarted());
      try {
        final meals = await _baseApi
            .getFromApi('${Endpoints.getMealCategories}${event.category}');
        emit(RecipiesState.loadedSuccess(meals, null));
      } catch (e) {
        emit(RecipiesState.loadedFailed(e.toString()));
      }
    });

    on<GetMealByIdEvent>((event, emit) async {
      emit(RecipiesState.loadingStarted());
      try {
        final meals =
            await _baseApi.getFromApi('${Endpoints.getMealById}${event.id}');
        emit(RecipiesState.loadedSuccess(meals, null));
      } catch (e) {
        emit(RecipiesState.loadedFailed(e.toString()));
      }
    });

    on<SearchMealByNameEvent>((event, emit) async {
      emit(RecipiesState.loadingStarted());
      try {
        final meals = await _baseApi
            .getFromApi('${Endpoints.searchMealByName}${event.name}');
        emit(RecipiesState.loadedSuccess(meals, null));
      } catch (e) {
        emit(RecipiesState.loadedFailed(e.toString()));
      }
    });
  }
}
