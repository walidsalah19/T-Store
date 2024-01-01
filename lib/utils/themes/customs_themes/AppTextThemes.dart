

import 'package:flutter/material.dart';

class AppTextThemes
{
  AppTextThemes._();
  static final textThemeLight=TextTheme(
    headlineLarge: TextStyle().copyWith(fontSize: 32,color: Colors.black,fontWeight: FontWeight.bold),
    headlineMedium: TextStyle().copyWith(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w600),
    headlineSmall: TextStyle().copyWith(fontSize: 19,color: Colors.black,fontWeight: FontWeight.w200),

    titleLarge: TextStyle().copyWith(fontSize: 17,color: Colors.black,fontWeight: FontWeight.w600),
    titleMedium: TextStyle().copyWith(fontSize: 17,color: Colors.black,fontWeight: FontWeight.w500),
    titleSmall: TextStyle().copyWith(fontSize: 17,color: Colors.black,fontWeight: FontWeight.w400),

    bodyLarge: TextStyle().copyWith(fontSize: 15,color: Colors.black,fontWeight: FontWeight.normal),
    bodyMedium: TextStyle().copyWith(fontSize: 15,color: Colors.black,fontWeight: FontWeight.normal),
    bodySmall: TextStyle().copyWith(fontSize: 15,color: Colors.black,fontWeight: FontWeight.normal),

    labelLarge: TextStyle().copyWith(fontSize: 14,color: Colors.black,fontWeight: FontWeight.normal),
    labelMedium: TextStyle().copyWith(fontSize: 14,color: Colors.black,fontWeight: FontWeight.normal),
    labelSmall: TextStyle().copyWith(fontSize: 14,color: Colors.black,fontWeight: FontWeight.normal),

  );
  static final textThemeDark=TextTheme(
    headlineLarge: TextStyle().copyWith(fontSize: 32,color: Colors.white,fontWeight: FontWeight.bold),
    headlineMedium: TextStyle().copyWith(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w600),
    headlineSmall: TextStyle().copyWith(fontSize: 19,color: Colors.white,fontWeight: FontWeight.w200),

    titleLarge: TextStyle().copyWith(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w600),
    titleMedium: TextStyle().copyWith(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w500),
    titleSmall: TextStyle().copyWith(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w400),

    bodyLarge: TextStyle().copyWith(fontSize: 15,color: Colors.white,fontWeight: FontWeight.normal),
    bodyMedium: TextStyle().copyWith(fontSize: 15,color: Colors.white,fontWeight: FontWeight.normal),
    bodySmall: TextStyle().copyWith(fontSize: 15,color: Colors.white,fontWeight: FontWeight.normal),

    labelLarge: TextStyle().copyWith(fontSize: 14,color: Colors.white,fontWeight: FontWeight.normal),
    labelMedium: TextStyle().copyWith(fontSize: 14,color: Colors.white,fontWeight: FontWeight.normal),
    labelSmall: TextStyle().copyWith(fontSize: 14,color: Colors.white,fontWeight: FontWeight.normal),
  );
}