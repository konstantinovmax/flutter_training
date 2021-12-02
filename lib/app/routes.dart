import 'package:flutter_training/screens/dark_side/dark_side.dart';
import 'package:flutter_training/screens/home/home.dart';
import 'package:flutter_training/screens/light_side/light_side.dart';
import 'package:flutter_training/screens/splash/splash.dart';
import 'package:flutter_training/constants/strings.dart';

routes() => {
      Routes.splashRoute: (context) => const Splash(),
      Routes.homeRoute: (context) => const Home(),
      Routes.lightSideRoute: (context) => const LightSide(),
      Routes.darkSideRoute: (context) => const DarkSide(),
    };
