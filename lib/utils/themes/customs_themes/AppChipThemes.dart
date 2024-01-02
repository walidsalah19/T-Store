

import 'package:flutter/material.dart';

class AppChipThemes
{
  AppChipThemes._();


  static final chipLight=ChipThemeData(
    labelStyle:const TextStyle(color: Colors.blue),
    selectedColor: Colors.blue,
    padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
    checkmarkColor: Colors.black
  );
  static final chipDark=ChipThemeData(
      labelStyle:const TextStyle(color: Colors.blue),
      selectedColor: Colors.blue,
      padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 12),
      checkmarkColor: Colors.white
  );
}