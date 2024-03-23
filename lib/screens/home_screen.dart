import 'package:flutter/material.dart';
import 'package:recipies_app/style/font_styles.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recipies App'),
      ),
      body: const Center(
        child: Text(
          'Home Screen',
          style: TypographyTheme.fontSemi24Px,
        ),
      ),
    );
  }
}
