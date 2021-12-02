import 'package:flutter_training/screens/home/home.dart';
import 'package:flutter_training/screens/splash/splash.dart';
import 'package:flutter_training/constants/strings.dart';

routes() => {
      Routes.splashRoute: (context) => const Splash(),
      Routes.homeRoute: (context) => const Home(),
    };
