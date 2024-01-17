

import 'package:flutter/material.dart';

class AppTextThemes
{
  AppTextThemes._();
  static final textThemeLight=TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32,color: Colors.black,fontWeight: FontWeight.bold),
    headlineMedium: const TextStyle().copyWith(fontSize: 25,color: Colors.black,fontWeight: FontWeight.w600),
    headlineSmall: const TextStyle().copyWith(fontSize: 19,color: Colors.black,fontWeight: FontWeight.w200),

    titleLarge: const TextStyle().copyWith(fontSize: 17,color: Colors.black,fontWeight: FontWeight.w600),
    titleMedium: const TextStyle().copyWith(fontSize: 17,color: Colors.black,fontWeight: FontWeight.w500),
    titleSmall: const TextStyle().copyWith(fontSize: 17,color: Colors.black,fontWeight: FontWeight.w400),

    bodyLarge: const TextStyle().copyWith(fontSize: 15,color: Colors.black,fontWeight: FontWeight.normal),
    bodyMedium: const TextStyle().copyWith(fontSize: 15,color: Colors.black,fontWeight: FontWeight.normal),
    bodySmall: const TextStyle().copyWith(fontSize: 15,color: Colors.black,fontWeight: FontWeight.normal),

    labelLarge: const TextStyle().copyWith(fontSize: 14,color: Colors.black,fontWeight: FontWeight.normal),
    labelMedium: const TextStyle().copyWith(fontSize: 14,color: Colors.black,fontWeight: FontWeight.normal),
    labelSmall: const TextStyle().copyWith(fontSize: 14,color: Colors.black,fontWeight: FontWeight.normal),

  );
  static final textThemeDark=TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32,color: Colors.white,fontWeight: FontWeight.bold),
    headlineMedium: const TextStyle().copyWith(fontSize: 25,color: Colors.white,fontWeight: FontWeight.w600),
    headlineSmall: const TextStyle().copyWith(fontSize: 19,color: Colors.white,fontWeight: FontWeight.w200),

    titleLarge: const TextStyle().copyWith(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w600),
    titleMedium: const TextStyle().copyWith(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w500),
    titleSmall: const TextStyle().copyWith(fontSize: 17,color: Colors.white,fontWeight: FontWeight.w400),

    bodyLarge: const TextStyle().copyWith(fontSize: 15,color: Colors.white,fontWeight: FontWeight.normal),
    bodyMedium: const TextStyle().copyWith(fontSize: 15,color: Colors.white,fontWeight: FontWeight.normal),
    bodySmall: const TextStyle().copyWith(fontSize: 15,color: Colors.white,fontWeight: FontWeight.normal),

    labelLarge: const TextStyle().copyWith(fontSize: 14,color: Colors.white,fontWeight: FontWeight.normal),
    labelMedium: const TextStyle().copyWith(fontSize: 14,color: Colors.white,fontWeight: FontWeight.normal),
    labelSmall: const TextStyle().copyWith(fontSize: 14,color: Colors.white,fontWeight: FontWeight.normal),
  );
}