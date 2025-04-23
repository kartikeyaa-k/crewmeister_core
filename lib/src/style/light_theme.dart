import 'package:crewmeister_core/src/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData get appLightTheme => ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  primaryColor: primaryColor,
  colorScheme: const ColorScheme.light(
    primary: primaryColor,
    secondary: secondaryColor,
    error: Color(0xFFD32F2F),
    onError: Color.fromARGB(255, 231, 206, 204),
    secondaryContainer: Color(0xFFE6F4EA),
    onSecondaryContainer: Color(0xFF2E7D32),
    tertiaryContainer: secondaryColor,
    onTertiaryContainer: primaryColor,
    errorContainer: Color(0xFFFFEBEE),
    onErrorContainer: Color(0xFFD32F2F),
    surfaceDim: Colors.grey,
  ),
  scaffoldBackgroundColor: const Color(0xFFFDFBF9),
  cardColor: const Color.fromRGBO(255, 209, 128, 0.2),
  appBarTheme: AppBarTheme(
    backgroundColor: primaryColor,
    elevation: 16,
    iconTheme: const IconThemeData(color: Colors.white),
    titleTextStyle: GoogleFonts.poppins(
      color: Colors.white,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  ),
  textTheme: GoogleFonts.poppinsTextTheme().copyWith(
    displayLarge: GoogleFonts.poppins(
      fontSize: 57,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
    displayMedium: GoogleFonts.poppins(
      fontSize: 45,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
    displaySmall: GoogleFonts.poppins(
      fontSize: 36,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
    headlineLarge: GoogleFonts.poppins(
      fontSize: 32,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
    headlineMedium: GoogleFonts.poppins(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: Colors.black87,
    ),
    headlineSmall: GoogleFonts.poppins(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: Colors.black87,
    ),
    titleLarge: GoogleFonts.poppins(
      fontSize: 22,
      fontWeight: FontWeight.w600,
      color: Colors.black87,
    ),
    titleMedium: GoogleFonts.poppins(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: Colors.black87,
    ),
    titleSmall: GoogleFonts.poppins(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: Colors.black87,
    ),
    bodyLarge: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.normal,
      color: Colors.black87,
    ),
    bodyMedium: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.normal,
      color: Colors.black87,
    ),
    bodySmall: GoogleFonts.poppins(
      fontSize: 10,
      fontWeight: FontWeight.normal,
      color: const Color(0xFF757575),
    ),
    labelLarge: GoogleFonts.poppins(
      fontSize: 14,
      fontWeight: FontWeight.w600,
      color: Colors.black87,
    ),
    labelMedium: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w500,
      color: const Color(0xFF616161),
    ),
    labelSmall: GoogleFonts.poppins(
      fontSize: 11,
      fontWeight: FontWeight.w400,
      color: const Color(0xFF9E9E9E),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color.fromRGBO(255, 253, 250, 0.1),
    labelStyle: GoogleFonts.poppins(
      fontSize: 12,
      fontWeight: FontWeight.w300,
      color: const Color.fromRGBO(0, 0, 0, 0.8),
    ),
    alignLabelWithHint: true,
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.grey),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Colors.grey),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: secondaryColor),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: Color(0xFFD32F2F)),
    ),
    contentPadding: const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
  ),

  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
      foregroundColor: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
      textStyle: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: primaryColor,
      textStyle: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w500),
    ),
  ),
  iconTheme: const IconThemeData(color: Color(0xFF616161)),
  cardTheme: CardTheme(
    color: const Color.fromRGBO(255, 244, 229, 0.4),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    elevation: 4,
    shadowColor: const Color.fromRGBO(0, 0, 0, 0.1),
  ),
  dividerColor: Colors.grey[300],
  snackBarTheme: SnackBarThemeData(
    backgroundColor: const Color(0xFFFFF3E0),
    contentTextStyle: GoogleFonts.poppins(color: Colors.black87),
  ),
);
