import 'package:flutter/material.dart';

class AppTheme {
  // Light theme colors
  static const Color lightPrimaryColor = Color(0xFF0071FF);
  static const Color lightAccentColor = Color(0xFF929292);
  static const Color lightBackgroundColor = Colors.white;
  static const Color lightTextColor = Colors.black;

  // Common text styles
  static TextStyle headline1 = const TextStyle(
    fontSize: 28.0,
    fontWeight: FontWeight.w700,
    fontFamily: 'Onset',
  );

  static TextStyle bodyText = const TextStyle(
    fontSize: 14.0,
    fontFamily: 'Onset',
    color: lightTextColor, // Text color for both light and dark themes
  );

  // Common padding and margin values
  static const EdgeInsets defaultPadding =
      EdgeInsets.symmetric(horizontal: 24.0);
  static const EdgeInsets cardPadding = EdgeInsets.all(16.0);
  static const EdgeInsets cardMargin = EdgeInsets.all(16.0);

  // Common border radius
  static const BorderRadius borderRadius = BorderRadius.all(
    Radius.circular(8.0),
  );

  // Custom text styles
  static TextStyle buttonTextStyle = const TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: lightPrimaryColor, // Text color for buttons
  );

  // Custom button theme
  static ButtonThemeData buttonTheme = const ButtonThemeData(
    buttonColor: lightAccentColor, // Background color for buttons
    shape: RoundedRectangleBorder(
      borderRadius: borderRadius,
    ),
  );

  // Create a theme data instance
  static ThemeData getAppTheme() {
    return ThemeData(
      primaryColor: lightPrimaryColor,
      fontFamily: 'Onset',
      scaffoldBackgroundColor: lightBackgroundColor,
      textTheme: TextTheme(
        displayLarge: headline1.copyWith(color: lightTextColor),
        bodyLarge: bodyText.copyWith(color: lightTextColor),
      ),
      buttonTheme: buttonTheme,
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: lightAccentColor,
        ),
      ),
      colorScheme: ColorScheme.fromSwatch(
        primarySwatch: customPrimaryColor,
      ).copyWith(
        secondary: lightAccentColor,
      ),
      // Add more theme customization options as needed
    );
  }
}

MaterialColor customPrimaryColor = const MaterialColor(0xFF0071FF, {
  50: Color(0xFF0071FF), // Define shades for your primary color
  100: Color(0xFF0071FF),
  200: Color(0xFF0071FF),
  300: Color(0xFF0071FF),
  400: Color(0xFF0071FF),
  500: Color(0xFF0071FF),
  600: Color(0xFF0071FF),
  700: Color(0xFF0071FF),
  800: Color(0xFF0071FF),
  900: Color(0xFF0071FF),
});
