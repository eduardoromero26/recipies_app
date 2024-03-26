import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipies_app/bloc/recipies_bloc.dart';
import 'package:recipies_app/style/font_styles.dart';
import 'package:recipies_app/utils/route_screens.dart';

class MealsBlocBuilder extends StatelessWidget {
  const MealsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RecipiesBloc, RecipiesState>(builder: (context, state) {
      return SliverSafeArea(
        bottom: true,
        minimum: const EdgeInsets.only(bottom: 16.0),
        sliver: SliverList.builder(
          addAutomaticKeepAlives: true,
          itemCount: context.read<RecipiesBloc>().mealList!.meals!.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.grey[200],
              ),
              margin:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: ListTile(
                  contentPadding: const EdgeInsets.only(left: 8.0, right: 16.0),
                  title: Text(
                      context
                          .read<RecipiesBloc>()
                          .mealList!
                          .meals![index]
                          .strMeal,
                      style: TypographyTheme.fontSemi20Px),
                  subtitle: Text(
                      context
                          .read<RecipiesBloc>()
                          .mealList!
                          .meals![index]
                          .strCategory,
                      style: TypographyTheme.fontRegular16Px),
                  leading: Hero(
                    tag: context
                        .read<RecipiesBloc>()
                        .mealList!
                        .meals![index]
                        .idMeal,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: CachedNetworkImage(
                        imageUrl: context
                            .read<RecipiesBloc>()
                            .mealList!
                            .meals![index]
                            .strMealThumb,
                        placeholder: (context, url) =>
                            const CircularProgressIndicator(),
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
                      ),
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () {
                    Navigator.pushNamed(context, RouteScreens.details,
                        arguments: context
                            .read<RecipiesBloc>()
                            .mealList!
                            .meals![index]);
                  },
                ),
              ),
            );
          },
        ),
      );
    });
  }
}
