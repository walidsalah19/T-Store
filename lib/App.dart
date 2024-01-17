

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/utils/themes/AppThemes.dart';
import 'Features/authintications/screens/onboarding/OnBoardingScreens.dart';


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
      home:  OnBoardingScreens()
    );
  }

}