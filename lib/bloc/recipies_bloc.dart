import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
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
  MealsModel selectedMeal = MealsModel();
  MealsModel? mealList = MealsModel();
  TextEditingController searchFieldController = TextEditingController();

  RecipiesBloc() : super(RecipiesState.initial()) {
    on<SearchMealByNameEvent>((event, emit) async {
      emit(RecipiesState.loadingStarted());
      try {
        final Response<dynamic> json = await _baseApi
            .getFromApi('${Endpoints.searchMealByName}${event.name}');
        mealList = MealsModel.fromJson(json.data);
        mealList?.meals != null
            ? emit(RecipiesState.loadedSuccess(mealList))
            : emit(RecipiesState.loadedFailed('No meals found'));
      } catch (e) {
        emit(RecipiesState.loadedFailed(e.toString()));
      }
    });
    on<GetMealByIdEvent>((event, emit) async {
      emit(RecipiesState.loadingStarted());
      try {
        final Response<dynamic> json =
            await _baseApi.getFromApi('${Endpoints.getMealById}${event.id}');
        final MealsModel meal = MealsModel.fromJson(json.data);
        selectedMeal = meal;
        emit(RecipiesState.loadedSuccess(meal));
      } catch (e) {
        emit(RecipiesState.loadedFailed(e.toString()));
      }
    });
    on<ResetSearchControllerEvent>((event, emit) {
      searchFieldController.clear();
    });
  }
}
