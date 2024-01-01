

import 'package:flutter/material.dart';

class AppCheckBoxThemes
{
  AppCheckBoxThemes._();
  static final checkBoxLight=CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateColor.resolveWith((states){
      if(states.contains(MaterialState.selected))
        {
          return Colors.white;
        }
      else
        {
          return Colors.black;
        }
    }),
    fillColor: MaterialStateColor.resolveWith((states){
      if(states.contains(MaterialState.selected))
      {
        return Colors.blue;
      }
      else
      {
        return Colors.transparent;
      }
    }),
  );
  static final checkBoxDark=CheckboxThemeData(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
    checkColor: MaterialStateColor.resolveWith((states){
      if(states.contains(MaterialState.selected))
      {
        return Colors.white;
      }
      else
      {
        return Colors.black;
      }
    }),
    fillColor: MaterialStateColor.resolveWith((states){
      if(states.contains(MaterialState.selected))
      {
        return Colors.blue;
      }
      else
      {
        return Colors.transparent;
      }
    }),
  );
}