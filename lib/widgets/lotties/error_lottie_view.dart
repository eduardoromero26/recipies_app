import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:recipies_app/bloc/recipies_bloc.dart';
import 'package:recipies_app/style/font_styles.dart';

class ErrorLottieView extends StatelessWidget {
  const ErrorLottieView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Lottie.asset('assets/lotties/error_lottie.json',
            width: 200, height: 200),
        const SizedBox(height: 40),
        const Text(
          'Error during the network request',
          style: TypographyTheme.fontSemi20Px,
        ),
        const SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            context.read<RecipiesBloc>().add(SearchMealByNameEvent(name: ''));
          },
          child: const Text('Try again', style: TypographyTheme.fontSemi20Px),
        ),
      ],
    ));
  }
}
