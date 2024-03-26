import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipies_app/bloc/recipies_bloc.dart';
import 'package:recipies_app/style/font_styles.dart';
import 'package:sliver_tools/sliver_tools.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPinnedHeader(
        child: Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16.0),
      child: TextField(
        controller: context.read<RecipiesBloc>().searchFieldController,
        decoration: InputDecoration(
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            hintText: 'Search for meals',
            hintStyle: TypographyTheme.fontMedium20Px,
            prefixIcon: const Icon(Icons.search),
            suffixIcon: context
                    .read<RecipiesBloc>()
                    .searchFieldController
                    .text
                    .isNotEmpty
                ? IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      context
                          .read<RecipiesBloc>()
                          .add(ResetSearchControllerEvent());
                      context
                          .read<RecipiesBloc>()
                          .add(SearchMealByNameEvent(name: ''));
                    })
                : null),
        onSubmitted: (value) {
          context.read<RecipiesBloc>().add(SearchMealByNameEvent(name: value));
        },
      ),
    ));
  }
}
