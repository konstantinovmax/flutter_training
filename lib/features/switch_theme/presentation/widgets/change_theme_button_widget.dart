import 'package:flutter_training/features/switch_theme/provider/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class ChangeThemeButton extends StatelessWidget {
  const ChangeThemeButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Switch.adaptive(
      activeTrackColor: Colors.grey.shade400,
      activeColor: Colors.grey.shade700,
      value: themeProvider.isDarkMode,
      onChanged: (value) {
        final provider = Provider.of<ThemeProvider>(context, listen: false);
        provider.toggleTheme(value);
      },
    );
  }
}
