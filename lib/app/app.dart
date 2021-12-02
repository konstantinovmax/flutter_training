import 'package:flutter/material.dart';
import 'package:flutter_training/app/routes.dart';
import 'package:flutter_training/provider/theme_provider.dart';
import 'package:flutter_training/constants/strings.dart';
import 'package:provider/provider.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
        builder: (context, _) {
          final themeProvider = Provider.of<ThemeProvider>(context);

          return MaterialApp(
            title: Texts.appBarTitle,
            themeMode: themeProvider.themeMode,
            theme: MyThemes.lightTheme,
            darkTheme: MyThemes.darkTheme,
            routes: routes(),
            initialRoute: Routes.splashRoute,
          );
        },
      );
}
