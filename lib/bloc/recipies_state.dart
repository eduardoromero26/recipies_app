part of 'recipies_bloc.dart';

@freezed
class RecipiesState with _$RecipiesState {
  factory RecipiesState.initial() = _Initial;
  factory RecipiesState.loadingStarted() = _LoadingStarted;
  factory RecipiesState.loadedSuccess(Map<String, dynamic>? meals, categories) =
      _LoadedSuccess;
  factory RecipiesState.loadedFailed(String message) = _LoadedFailed;
}
