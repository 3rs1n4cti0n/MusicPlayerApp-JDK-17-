import 'package:flutter/material.dart';

CustomTheme currentTheme = CustomTheme();

class CustomTheme with ChangeNotifier {
  static bool _isDarkMode = true;
  ThemeMode get currentTheme => _isDarkMode ? ThemeMode.dark : ThemeMode.light;

  void toggleTheme()
  {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
  static ThemeData get lightTheme{
    return ThemeData(
      primaryColor: Colors.lightBlue,
      backgroundColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,

      textTheme: const TextTheme(
        headline1: TextStyle(color: Colors.black),
        headline2: TextStyle(color: Colors.black),
        bodyText1: TextStyle(color: Colors.black),
        bodyText2: TextStyle(color: Colors.black),
      )
    );
  }

  static ThemeData get darkTheme{
    return ThemeData(
        primaryColor: Colors.grey[900],
        backgroundColor: Colors.grey[500],
        scaffoldBackgroundColor: Colors.grey[800],
        dividerColor: Colors.grey[700],
        textTheme: TextTheme(
          headline1: const TextStyle(color: Colors.teal,fontSize: 24),
          headline2: const TextStyle(color: Colors.tealAccent,fontSize: 20),
          headline3: TextStyle(color: Colors.teal[600],fontSize: 10),
          headline4: const TextStyle(color: Colors.tealAccent,fontSize: 12),
          bodyText1: const TextStyle(color: Colors.teal,fontSize: 16),
          bodyText2: const TextStyle(color: Colors.tealAccent, fontSize: 14),
        ),
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: Colors.teal,
            background: Colors.teal[100],
        ),
    );
  }
}