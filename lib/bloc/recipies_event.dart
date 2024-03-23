part of 'recipies_bloc.dart';

abstract class RecipiesEvent {}

class FetchCategoriesEvent extends RecipiesEvent {}

class GetMealByCategoryEvent extends RecipiesEvent {
  final String category;
  GetMealByCategoryEvent({required this.category});
}

class GetMealByIdEvent extends RecipiesEvent {
  final String id;
  GetMealByIdEvent({required this.id});
}

class SearchMealByNameEvent extends RecipiesEvent {
  final String name;
  SearchMealByNameEvent({required this.name});
}
