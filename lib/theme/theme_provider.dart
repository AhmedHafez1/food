import 'package:flutter/material.dart';
import 'package:food_delivery/theme/dark_mode.dart';
import 'package:food_delivery/theme/light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightMode;
  ThemeData get themeData => _themeData;

  get isDarkMode => _themeData == darktMode;

  void toggleTheme() {
    _themeData = _themeData == lightMode ? darktMode : lightMode;
    notifyListeners();
  }
}
