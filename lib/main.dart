import 'package:flutter/material.dart';
import 'package:recipies_app/routes/router_generator.dart';
import 'package:recipies_app/utils/route_screens.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipies App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: RouteScreens.home,
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
