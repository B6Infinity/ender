import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: const Color(0xff048a4e),
  primaryColorLight: const Color(0xff06bf6c),
  primaryColorDark: const Color(0xff01331d),
  appBarTheme: const AppBarTheme(color: Color(0xff048a4e)),
  textTheme: TextTheme(
    bodyText2: GoogleFonts.firaSans(),
    bodyText1: GoogleFonts.firaSans(),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: const Color(0xff048a4e),
  primaryColorLight: const Color(0xff06bf6c),
  primaryColorDark: const Color(0xff01331d),
  appBarTheme: const AppBarTheme(color: Color(0xff048a4e)),
  scaffoldBackgroundColor: const Color(0xff06120c),
  textTheme: TextTheme(
    bodyText2: GoogleFonts.firaSans(),
    bodyText1: GoogleFonts.firaSans(),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: primaryColor,
    ),
  ),
);

const lightestColor = Color(0xff03fc8c);
const primaryColorLight = Color(0xff06bf6c);
const primaryColor = Color(0xff048a4e);
const primaryColorDark = Color(0xff048a4e);
const darkestColor = Color(0xff06120c);

InputDecoration generateInputDecoration(String label) {
  return InputDecoration(
    labelText: label,
    focusColor: primaryColor,
    focusedBorder: const OutlineInputBorder(
      borderSide: BorderSide(
        width: 2,
        color: primaryColor,
      ),
    ),
    labelStyle: const TextStyle(color: primaryColor),
  );
}
