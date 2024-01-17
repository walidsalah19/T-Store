

import 'package:flutter/material.dart';

class AppTextFieldThemes
{
  AppTextFieldThemes._();


  static final textFieldLight=InputDecorationTheme(
    errorMaxLines: 4,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,

    labelStyle:const TextStyle(color: Colors.black,fontSize: 14),
    hintStyle: const TextStyle(color: Colors.black,fontSize: 14),

    border: const OutlineInputBorder().copyWith(
      borderSide:const BorderSide(color: Colors.grey,width: 1),
      borderRadius:BorderRadius.circular(14)
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
        borderSide:const BorderSide(color: Colors.grey,width: 1),
        borderRadius:BorderRadius.circular(14)
    ),
    errorBorder: const OutlineInputBorder().copyWith(
        borderSide:const BorderSide(color: Colors.red,width: 1),
        borderRadius:BorderRadius.circular(14)
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
        borderSide:const BorderSide(color: Colors.orangeAccent,width: 1),
        borderRadius:BorderRadius.circular(14)
    ),

  );
  static final textFieldDark=InputDecorationTheme(
    errorMaxLines: 4,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,

    labelStyle:const TextStyle(color: Colors.white,fontSize: 14),
    hintStyle: const TextStyle(color: Colors.white,fontSize: 14),

    border: const OutlineInputBorder().copyWith(
        borderSide:const BorderSide(color: Colors.grey,width: 1),
        borderRadius:BorderRadius.circular(14)
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
        borderSide:const BorderSide(color: Colors.grey,width: 1),
        borderRadius:BorderRadius.circular(14)
    ),
    errorBorder: const OutlineInputBorder().copyWith(
        borderSide:const BorderSide(color: Colors.red,width: 1),
        borderRadius:BorderRadius.circular(14)
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
        borderSide:const BorderSide(color: Colors.orangeAccent,width: 1),
        borderRadius:BorderRadius.circular(14)
    ),
  );
}