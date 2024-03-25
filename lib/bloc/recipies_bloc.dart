import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:recipies_app/models/meal_model.dart';
import 'package:recipies_app/services/base_api.dart';
import 'package:recipies_app/utils/endpoints.dart';

part 'recipies_event.dart';
part 'recipies_state.dart';
part 'recipies_bloc.freezed.dart';

class RecipiesBloc extends Bloc<RecipiesEvent, RecipiesState> {
  final BaseApi _baseApi = BaseApi();

  RecipiesBloc() : super(RecipiesState.initial()) {
    on<SearchMealByNameEvent>((event, emit) async {
      emit(RecipiesState.loadingStarted());
      try {
        final Map<String, dynamic> json = await _baseApi
            .getFromApi('${Endpoints.searchMealByName}${event.name}');
        final MealsModel meals = MealsModel.fromJson(json);
        meals.meals != null
            ? emit(RecipiesState.loadedSuccess(meals))
            : emit(RecipiesState.loadedFailed('No meals found'));
      } catch (e) {
        emit(RecipiesState.loadedFailed(e.toString()));
      }
    });
    on<GetMealByIdEvent>((event, emit) async {
      emit(RecipiesState.loadingStarted());
      try {
        final meals =
            await _baseApi.getFromApi('${Endpoints.getMealById}${event.id}');
        emit(RecipiesState.loadedSuccess(meals));
      } catch (e) {
        emit(RecipiesState.loadedFailed(e.toString()));
      }
    });
  }
}
