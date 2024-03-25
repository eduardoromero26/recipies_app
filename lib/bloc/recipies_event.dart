part of 'recipies_bloc.dart';

abstract class RecipiesEvent {}

class SearchMealByNameEvent extends RecipiesEvent {
  final String name;
  SearchMealByNameEvent({required this.name});
}

class ResetSearchControllerEvent extends RecipiesEvent {}
