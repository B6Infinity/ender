import 'package:ender/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;
  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme() {
    if (useTheme == 'Device Theme') {
      // Set to DARK
      useTheme = 'Dark Mode';
      themeMode = ThemeMode.dark;
    } else if (useTheme == 'Dark Mode') {
      // Set to LIGHT
      useTheme = 'Light Mode';
      themeMode = ThemeMode.light;
    } else if (useTheme == 'Light Mode') {
      // Set to SYSTEM
      useTheme = 'Device Theme';
      themeMode = ThemeMode.system;
    }
    notifyListeners();
  }
}
