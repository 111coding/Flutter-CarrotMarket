import 'package:flutter/material.dart';

TextTheme textTheme() {
  return TextTheme(
    // headlineLarge: GoogleFonts.openSans(fontSize: 24.0, color: Colors.black, fontWeight: FontWeight.bold),
    // bodyLarge: GoogleFonts.openSans(fontSize: 18.0, color: Colors.black),
    // bodyMedium: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black, fontWeight: FontWeight.bold),
    // bodySmall: GoogleFonts.openSans(fontSize: 16.0, color: Colors.black),
    // titleMedium: GoogleFonts.openSans(fontSize: 14.0, color: Colors.black),
  );
}

AppBarTheme appTheme() {
  return AppBarTheme(
    centerTitle: false,
    color: Colors.white,
    elevation: 0.0,
    // titleTextStyle: GoogleFonts.nanumGothic(
    //   fontSize: 16,
    //   fontWeight: FontWeight.bold,
    //   color: Colors.black,
    // ),
    iconTheme: const IconThemeData(color: Colors.black),
    actionsIconTheme: const IconThemeData(color: Colors.black),
    // toolbarTextStyle: GoogleFonts.nanumGothic(
    //   fontSize: 16,
    //   fontWeight: FontWeight.bold,
    //   color: Colors.black,
    // ),
  );
}

ElevatedButtonThemeData elevatedButtonThemeData() {
  return ElevatedButtonThemeData(
    style: ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color?>(
        (Set<MaterialState> states) => states.contains(MaterialState.pressed) ? Colors.orangeAccent : Colors.orange,
      ),
      // textStyle: MaterialStateProperty.all(
      //   // GoogleFonts.openSans(fontSize: 14.0, color: Colors.black, fontWeight: FontWeight.bold),
      // ),
    ),
  );
}

TextButtonThemeData textButtonThemeData() {
  return TextButtonThemeData(
    style: ButtonStyle(
      foregroundColor: MaterialStateProperty.all<Color>(Colors.orange),
      // textStyle: MaterialStateProperty.all(GoogleFonts.openSans(fontSize: 16.0)),
    ),
  );
}

ThemeData theme() {
  return ThemeData(
    scaffoldBackgroundColor: Colors.white,
    textTheme: textTheme(),
    appBarTheme: appTheme(),
    elevatedButtonTheme: elevatedButtonThemeData(),
    textButtonTheme: textButtonThemeData(),
    checkboxTheme: CheckboxThemeData(
      fillColor: MaterialStateProperty.resolveWith<Color>(
        (Set<MaterialState> states) => states.contains(MaterialState.selected) ? Colors.orange : Colors.grey,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
    ),
    primaryColor: Colors.orange,
  );
}
