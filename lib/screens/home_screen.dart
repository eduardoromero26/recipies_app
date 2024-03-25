import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipies_app/bloc/recipies_bloc.dart';
import 'package:recipies_app/models/meal_model.dart';
import 'package:recipies_app/style/font_styles.dart';
import 'package:recipies_app/utils/route_screens.dart';
import 'package:sliver_tools/sliver_tools.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    context.read<RecipiesBloc>().add(SearchMealByNameEvent(name: ''));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        const SliverToBoxAdapter(
            child: SizedBox(
          height: 20,
        )),
        SliverPinnedHeader(
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
                suffixIcon: IconButton(
                    icon: const Icon(Icons.clear),
                    onPressed: () {
                      context
                          .read<RecipiesBloc>()
                          .add(ResetSearchControllerEvent());
                      context
                          .read<RecipiesBloc>()
                          .add(SearchMealByNameEvent(name: ''));
                    })),
            onSubmitted: (value) {
              context
                  .read<RecipiesBloc>()
                  .add(SearchMealByNameEvent(name: value));
            },
          ),
        )),
        BlocConsumer<RecipiesBloc, RecipiesState>(
          listener: (BuildContext context, RecipiesState state) {},
          builder: (context, state) {
            return state.when(initial: () {
              return const SliverFillRemaining(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }, loadingStarted: () {
              return const SliverFillRemaining(
                child: Center(
                  child: CircularProgressIndicator(),
                ),
              );
            }, loadedSuccess: (MealsModel? meals) {
              return context.read<RecipiesBloc>().mealList != null
                  ? BlocBuilder<RecipiesBloc, RecipiesState>(
                      builder: (context, state) {
                      return SliverList.builder(
                        addAutomaticKeepAlives: true,
                        itemCount: context
                            .read<RecipiesBloc>()
                            .mealList!
                            .meals!
                            .length,
                        itemBuilder: (BuildContext context, int index) {
                          return ListTile(
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
                            trailing: const Icon(Icons.arrow_forward_ios),
                            onTap: () {
                              context.read<RecipiesBloc>().add(GetMealByIdEvent(
                                  id: context
                                      .read<RecipiesBloc>()
                                      .mealList!
                                      .meals![index]
                                      .idMeal));
                              Navigator.pushNamed(context, RouteScreens.details,
                                  arguments: context
                                      .read<RecipiesBloc>()
                                      .mealList!
                                      .meals![index]);
                            },
                          );
                        },
                      );
                    })
                  : const SliverFillRemaining(
                      child: Center(
                        child: Text('No meals found'),
                      ),
                    );
            }, loadedFailed: (String message) {
              return const SliverFillRemaining(
                child: Center(
                  child: Text('ERROR STATE'),
                ),
              );
            });
          },
        ),
      ],
    ));
  }
}
