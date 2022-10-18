import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var defaultDarkTheme = ColorScheme.fromSwatch(
    primarySwatch: Colors.red, brightness: Brightness.dark);

ThemeData appTheme(darkColorScheme, context) {
  return ThemeData(
    fontFamily: GoogleFonts.nunito().fontFamily,
    colorScheme: darkColorScheme ?? defaultDarkTheme,
    backgroundColor: Theme.of(context).colorScheme.primary,
    useMaterial3: true,
  );
}
