import 'package:flutter/material.dart';
import 'package:flutter_training/provider/theme_provider.dart';
import 'package:flutter_training/screens/home/widgets/change_theme_button_widget.dart';
import 'package:flutter_training/constants/strings.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mainText =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.light
            ? Texts.lightSide
            : Texts.darkSide;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Texts.appBarTitle,
              style: TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w500,
                fontSize: 20,
                height: 1.2,
                color: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Icon(
              Icons.arrow_right_alt_sharp,
              color: Theme.of(context).primaryColor,
              size: 30,
            ),
          ],
        ),
        centerTitle: true,
        actions: const [
          ChangeThemeButton(),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              mainText,
              style: const TextStyle(
                fontFamily: 'Roboto',
                fontWeight: FontWeight.w700,
                fontSize: 22,
                height: 1.2,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Provider.of<ThemeProvider>(context).themeMode == ThemeMode.light
                ? IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.lightSideRoute);
                    },
                    icon: Image.asset(Images.lightSide),
                    iconSize: 80,
                  )
                : IconButton(
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.darkSideRoute);
                    },
                    icon: Image.asset(Images.darkSide),
                    iconSize: 80,
                  ),
          ],
        ),
      ),
    );
  }
}
