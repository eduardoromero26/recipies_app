part of 'recipies_bloc.dart';

abstract class RecipiesEvent {}

class GetMealByIdEvent extends RecipiesEvent {
  final String id;
  GetMealByIdEvent({required this.id});
}

class SearchMealByNameEvent extends RecipiesEvent {
  final String name;
  SearchMealByNameEvent({required this.name});
}
