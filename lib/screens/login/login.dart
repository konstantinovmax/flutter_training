import 'package:flutter/material.dart';
import 'package:flutter_training/theme/theme_provider.dart';
import 'package:flutter_training/theme/widget/change_theme_button_widget.dart';
import 'package:provider/provider.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String title = 'Выбери свою сторону';

    final mainText =
        Provider.of<ThemeProvider>(context).themeMode == ThemeMode.light
            ? 'Светлая сторона'
            : 'Тёмная сторона';

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          title,
          style: TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w700,
            fontSize: 20,
            height: 1.2,
          ),
        ),
        centerTitle: true,
        actions: const [
          ChangeThemeButtonWidget(),
        ],
      ),
      body: Center(
        child: Text(
          mainText,
          style: const TextStyle(
            fontFamily: 'Roboto',
            fontWeight: FontWeight.w700,
            fontSize: 20,
            height: 1.2,
          ),
        ),
      ),
    );
  }
}
