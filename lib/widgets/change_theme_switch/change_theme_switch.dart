import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:theme/theme/index.dart';

class ChangeThemeSwitch extends StatelessWidget {
  const ChangeThemeSwitch({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final themeNotifier = Provider.of<ThemeProvider>(context);
    return Row(
      children: [
        themeNotifier.isDarkMode
            ? const Icon(Icons.dark_mode)
            : const Icon(Icons.light_mode),
        Switch(
          value: themeNotifier.isDarkMode,
          onChanged: (value) {
            themeNotifier.toggleTheme();
          },
        ),
      ],
    );
  }
}
