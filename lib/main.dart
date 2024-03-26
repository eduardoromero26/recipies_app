import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:recipies_app/bloc/recipies_bloc.dart';
import 'package:recipies_app/routes/router_generator.dart';
import 'package:recipies_app/services/base_api.dart';
import 'package:recipies_app/style/color_theme.dart';
import 'package:recipies_app/utils/route_screens.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: "assets/env/.env.dev");
  final BaseApi baseApi = BaseApi();

  runApp(
    BlocProvider(
      create: (context) => RecipiesBloc(baseApi),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipies App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: ColorsTheme.primaryColor),
        useMaterial3: true,
      ),
      initialRoute: RouteScreens.home,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
