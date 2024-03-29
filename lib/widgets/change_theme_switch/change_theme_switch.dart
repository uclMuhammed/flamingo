import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/theme/theme_provider/theme_provider.dart';

class ChangeThemeSwitch extends StatelessWidget {
  const ChangeThemeSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: Provider.of<ThemeProvider>(context, listen: true).isDarkMode,
      onChanged: (value) =>
          Provider.of<ThemeProvider>(context, listen: false).toggleTheme(),
    );
  }
}
