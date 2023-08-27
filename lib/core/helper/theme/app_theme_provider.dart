

import 'package:consultation_medical/core/helper/theme/app_theme_pref.dart';
import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {

  AppPreference appPreference = AppPreference();
  bool _darkTheme = false;
  bool get darkTheme => _darkTheme;

  set darkTheme(bool value) {
    _darkTheme = value;
    appPreference.setThemePref(value);
    notifyListeners();
  }
}