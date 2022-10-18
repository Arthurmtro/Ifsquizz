import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var defaultDarkTheme = ColorScheme.fromSwatch(
    primarySwatch: Colors.blue, brightness: Brightness.dark);

ThemeData appTheme(darkColorScheme) {
  return ThemeData(
    fontFamily: GoogleFonts.nunito().fontFamily,
    colorScheme: darkColorScheme ?? defaultDarkTheme,
    useMaterial3: true,
  );
}
