import 'package:flutter/material.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.blueAccent,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Colors.blueAccent,
      toolbarTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ), // Definido o estilo do texto na barra de app
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
      ), // Definido o estilo do título na barra de app
    ),
    textTheme: TextTheme(
      // Agora utilizando 'bodyLarge', 'bodyMedium', 'headlineLarge', 'headlineMedium'
      bodyLarge: TextStyle(color: Colors.black, fontSize: 16),
      bodyMedium: TextStyle(color: Colors.black54, fontSize: 14),
      headlineLarge: TextStyle(
        color: Colors.blueAccent,
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        color: Colors.blueAccent,
        fontSize: 28,
        fontWeight: FontWeight.w600,
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.teal,
      textTheme: ButtonTextTheme.primary,
    ),
    iconTheme: IconThemeData(color: Colors.blueAccent),
    colorScheme: ColorScheme.light(
      secondary: Colors.teal, // Anteriormente 'accentColor'
    ),
  );

  static final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.grey[850],
    scaffoldBackgroundColor: Colors.grey[900],
    appBarTheme: AppBarTheme(
      color: Colors.grey[850],
      toolbarTextStyle: TextStyle(color: Colors.white, fontSize: 20),
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: Colors.white70, fontSize: 16),
      bodyMedium: TextStyle(color: Colors.white60, fontSize: 14),
      headlineLarge: TextStyle(
        color: Colors.cyan[600],
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
      headlineMedium: TextStyle(
        color: Colors.cyan[600],
        fontSize: 28,
        fontWeight: FontWeight.w600,
      ),
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: Colors.cyan[600],
      textTheme: ButtonTextTheme.primary,
    ),
    iconTheme: IconThemeData(color: Colors.cyan[600]),
    colorScheme: ColorScheme.dark(secondary: Colors.cyanAccent),
  );
}
