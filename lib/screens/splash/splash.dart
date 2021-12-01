import 'package:flutter/material.dart';
import 'package:flutter_training/theme/colors.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    _navToLogin();
    super.initState();
  }

  void _navToLogin() async {
    await Future.delayed(const Duration(milliseconds: 2000), () {});
    Navigator.of(context).popAndPushNamed('/login');
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: blueColor1,
      body: Center(
        child: Image(image: AssetImage('assets/images/mainLogo.png')),
      ),
    );
  }
}
