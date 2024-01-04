

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/Features/authintications/screens/OnBoardingScreens.dart';
import 'package:t_store/utils/themes/AppThemes.dart';

class App extends StatelessWidget
{
  const App({super.key});
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode:ThemeMode.system,
      theme: AppThemes.lightTheme,
      darkTheme: AppThemes.darkTheme,
      home: const OnBoardingScreens()
    );
  }

}