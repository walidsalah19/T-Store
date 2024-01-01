import 'package:flutter/material.dart';
import 'package:t_store/utils/themes/customs_themes/AppButtomSheetThemes.dart';
import 'package:t_store/utils/themes/customs_themes/AppButtonThemes.dart';
import 'package:t_store/utils/themes/customs_themes/AppCheckBoxThemes.dart';
import 'package:t_store/utils/themes/customs_themes/AppChipThemes.dart';
import 'package:t_store/utils/themes/customs_themes/AppTextFieldThemes.dart';
import 'package:t_store/utils/themes/customs_themes/AppTextThemes.dart';
import 'package:t_store/utils/themes/customs_themes/AppbarThemes.dart';

class AppThemes {
  AppThemes._();

  static ThemeData lightTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.white,
      textTheme: AppTextThemes.textThemeLight,
      appBarTheme: AppbarThemes.appbarLight,
      chipTheme: AppChipThemes.chipLight,
      checkboxTheme: AppCheckBoxThemes.checkBoxLight,
      elevatedButtonTheme: AppButtonThemes.buttonLightTheme,
      bottomSheetTheme: AppBottomSheetThemes.bottomSheetLight,
      inputDecorationTheme: AppTextFieldThemes.textFieldLight);
  static ThemeData darkTheme = ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      primaryColor: Colors.blue,
      scaffoldBackgroundColor: Colors.black,
      textTheme: AppTextThemes.textThemeDark,
      appBarTheme: AppbarThemes.appbarDark,
      chipTheme: AppChipThemes.chipDark,
      checkboxTheme: AppCheckBoxThemes.checkBoxDark,
      elevatedButtonTheme: AppButtonThemes.buttonDarkTheme,
      bottomSheetTheme: AppBottomSheetThemes.bottomSheetDark,
      inputDecorationTheme: AppTextFieldThemes.textFieldDark);
}
