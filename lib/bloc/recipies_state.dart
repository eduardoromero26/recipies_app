part of 'recipies_bloc.dart';

@freezed
class RecipiesState with _$RecipiesState {
  factory RecipiesState.initial() = _Initial;
  factory RecipiesState.loadingStarted() = _LoadingStarted;
  factory RecipiesState.loadedSuccess(MealsModel? meals) = _LoadedSuccess;
  factory RecipiesState.loadedFailed(String message) = _LoadedFailed;
}
