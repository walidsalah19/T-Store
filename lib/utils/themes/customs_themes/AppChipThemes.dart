

import 'package:flutter/material.dart';

class AppChipThemes
{
  AppChipThemes._();


  static const chipLight=ChipThemeData(
    labelStyle:TextStyle(color: Colors.blue),
    selectedColor: Colors.blue,
    padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
    checkmarkColor: Colors.black
  );
  static const chipDark=ChipThemeData(
      labelStyle:TextStyle(color: Colors.blue),
      selectedColor: Colors.blue,
      padding: EdgeInsets.symmetric(horizontal: 12,vertical: 12),
      checkmarkColor: Colors.white
  );
}