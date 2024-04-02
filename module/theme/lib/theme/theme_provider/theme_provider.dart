import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

class ThemeProvider extends ChangeNotifier {
  final Box _settingsBox;

  ThemeProvider(this._settingsBox);

  bool get isDarkMode => _settingsBox.get('isDarkMode', defaultValue: false);

  void toggleTheme() {
    final bool newMode = !_settingsBox.get('isDarkMode', defaultValue: false);
    _settingsBox.put('isDarkMode', newMode);
    notifyListeners();
  }
}
