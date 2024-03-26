import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:recipies_app/style/font_styles.dart';

class LoadingLottieView extends StatelessWidget {
  const LoadingLottieView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Lottie.asset('assets/lotties/progress_lottie.json',
            width: MediaQuery.of(context).size.width * 0.5),
        const Text(
          'Loading meals...',
          style: TypographyTheme.fontSemi20Px,
        ),
      ],
    ));
  }
}
