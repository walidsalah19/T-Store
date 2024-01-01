import 'package:flutter/material.dart';

class AppButtonThemes {
  AppButtonThemes._();

  static final buttonLightTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.grey,
          side: const BorderSide(color: Colors.blue),
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)),
          textStyle: const TextStyle(
              color: Colors.black, fontSize: 17, fontWeight: FontWeight.w600)
      )
  );

  static final buttonDarkTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          foregroundColor: Colors.white,
          backgroundColor: Colors.blue,
          disabledBackgroundColor: Colors.grey,
          disabledForegroundColor: Colors.grey,
          side: const BorderSide(color: Colors.blue),
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0)),
          textStyle: const TextStyle(
              color: Colors.white, fontSize: 17, fontWeight: FontWeight.w600)
      )
  );

}