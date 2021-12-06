import 'package:flutter_training/common/strings.dart';
import 'package:flutter_training/features/switch_theme/presentation/screens/home.dart';
import 'package:flutter_training/features/person_details/presentation/screens/dark_side.dart';
import 'package:flutter_training/features/person_details/presentation/screens/light_side.dart';
import 'package:flutter_training/features/splash/presentation/screens/splash.dart';

routes() => {
      Routes.splashRoute: (context) => const Splash(),
      Routes.homeRoute: (context) => const Home(),
      Routes.lightSideRoute: (context) => const LightSide(),
      Routes.darkSideRoute: (context) => const DarkSide(),
    };
