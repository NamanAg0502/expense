import 'package:expense/constants/theme.dart';
import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDarkMode = false; // Default to dark mode

  bool get isDarkMode => _isDarkMode;

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }

  // ThemeData getCurrentTheme() {
  //   return AppTheme.getAppTheme(_isDarkMode);
  // }
}
