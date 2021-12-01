import 'package:flutter/material.dart';
import 'package:flutter_training/screens/login/login.dart';
import 'package:flutter_training/screens/registration/registration.dart';
import 'package:flutter_training/screens/splash/splash.dart';
import 'package:flutter_training/theme/theme_provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);

          return MaterialApp(
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            routes: {
              '/splash': (context) => const Splash(),
              '/login': (context) => const Login(),
              '/registration': (context) => const Registration(),
            },
            initialRoute: '/splash',
          );
        },
      );
}
