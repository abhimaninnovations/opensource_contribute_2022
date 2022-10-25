import 'package:flutter/material.dart';

ThemeData lightTheme() {
  return ThemeData.light().copyWith(
      colorScheme: ColorScheme.light().copyWith(
        primary: Color(0xFF00FFAB),
        secondary: Color(0xFF72FFFF),
        surface: Color(0xFF00FFAB),
        background: Colors.white,
        onBackground: Color(0xFF172774),
      ),
      scaffoldBackgroundColor: Colors.transparent,
      iconTheme: IconThemeData(color: Color(0xFF172774)),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Color(0xFF172774)),
        // ignore: deprecated_member_use
        textTheme: TextTheme(
          titleLarge: TextStyle(color: Color(0xFF172774)),
          titleMedium: TextStyle(color: Color(0xFF172774)),
          titleSmall: TextStyle(color: Color(0xFF172774)),
          bodyLarge: TextStyle(color: Color(0xFF172774)),
          bodyMedium: TextStyle(color: Color(0xFF172774)),
          bodySmall: TextStyle(color: Color(0xFF172774)),
        ),
      ));
}

ThemeData darkTheme() {
  return ThemeData.dark().copyWith(
      colorScheme: ColorScheme.dark().copyWith(
        primary: Color(0xFF172774),
        secondary: Color(0xFFFF0075),
        surface: Colors.white,
        background: Colors.black87,
        onBackground: Colors.white,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
        // ignore: deprecated_member_use
        textTheme: TextTheme(
          titleLarge: TextStyle(
            color: Colors.white,
          ),
          titleMedium: TextStyle(
            color: Colors.white,
          ),
          titleSmall: TextStyle(
            color: Colors.white,
          ),
          bodyLarge: TextStyle(
            color: Colors.white,
          ),
          bodyMedium: TextStyle(
            color: Colors.white,
          ),
          bodySmall: TextStyle(
            color: Colors.white,
          ),
        ),
      ));
}
