import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_training/common/strings.dart';
import 'package:flutter_training/features/switch_theme/presentation/screens/home.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Images.splashLogo,
      splashTransition: SplashTransition.scaleTransition,
      animationDuration: const Duration(milliseconds: 500),
      duration: 500,
      nextScreen: const Home(),
    );
  }
}
