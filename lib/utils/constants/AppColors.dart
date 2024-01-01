import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  //Basic application colors
  static const primaryColor = Color(0xff4B68FF);
  static const secondary = Color(0xFFFFE248);
  static const accent = Color(0xFFb0c7FF);
  static const linerGradient = LinearGradient(
      begin: Alignment(0.0, 0.0),
      end: Alignment(0.707, -0.707),
      colors: [Color(0xffff9a9c), Color(0xfffad0c4), Color(0xfffad0c4)]);

  //text colors
  static const textPrimaryColor = Color(0xFF333333);
  static const textSecondary = Color(0xFF6C7570);
  static const textWhite = Colors.white;

  //background colors
  static const light = Color(0xFFF6F6F6);
  static const dark = Color(0xFF272727);
  static const backgroundPrimary = Color(0xFFF3F5FF);
}
