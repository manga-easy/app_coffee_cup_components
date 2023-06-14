import 'package:flutter/material.dart';

class MockThemeService extends ChangeNotifier {
  static final MockThemeService _singleton = MockThemeService._internal();

  factory MockThemeService() {
    return _singleton;
  }

  MockThemeService._internal();

  void changeTheme() {
    notifyListeners();
  }

  static bool isDarkTema = true;
  static Color backgroundColor = Colors.grey.shade900;

  static Color backgroundIcon = Colors.white;

  static Color backgroundText = Colors.white;
  //Primary Col

  static Color primaryText = Colors.white;

  static Color primaryColor = Colors.red;
  //Select Colo

  static Color selectColor = Colors.grey.shade700;

  static Color selectText = Colors.grey.shade900;


  ColorScheme get colorScheme => const ColorScheme.dark()
      .copyWith(
        primary: Colors.white,
      )
      .copyWith(secondary: Colors.black);

  BorderRadiusGeometry get borderRadius => BorderRadius.circular(20);

  ThemeData returnThemeData() {
    if (isDarkTema) {
      return ThemeData.dark().copyWith(
        scaffoldBackgroundColor: backgroundColor,
        primaryColor: primaryColor,
        textTheme: ThemeData.dark().textTheme,
        colorScheme: colorScheme.copyWith(
          background: backgroundColor,
        ),
      );
    }
    return ThemeData.light().copyWith(
      scaffoldBackgroundColor: backgroundColor,
      primaryColor: primaryColor,
      textTheme: ThemeData.dark().textTheme,
      colorScheme: colorScheme.copyWith(
        background: backgroundColor,
      ),
    );
  }
}