import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class AppDeviceUtils {
  AppDeviceUtils._();


  static void hideKeyboard(BuildContext context) {
    FocusScope.of(context).requestFocus(FocusNode());
  }

  static Future<void> setStatusBarColor(Color color) async {
    SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(statusBarColor: color));
  }

  static bool isLandscapeOrOrientation(BuildContext context) {
    final viewIntent = View.of(context).viewInsets;
    return viewIntent.bottom == 0;
  }

  static void fullScreen(bool enable) {
    SystemChrome.setEnabledSystemUIMode(
        enable ? SystemUiMode.immersiveSticky : SystemUiMode.edgeToEdge);
  }

  static double getScreenHeight() {
    return MediaQuery.of(Get.context!).size.height;
  }

  static double getScreenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static double getPixelRatio() {
    return MediaQuery.of(Get.context!).devicePixelRatio;
  }

  static double getStatusBarHieght() {
    return MediaQuery.of(Get.context!).padding.top;
  }

  static double getBottomSheetHieght() {
    return kBottomNavigationBarHeight;
  }

  static double getAppBarHeight() {
    return kToolbarHeight;
  }

  static double getKeyboardHeight() {
    final viewIntent = View.of(Get.context!).viewInsets;
    return viewIntent.bottom;
  }

  static Future<bool> getKeyboardVisible() async {
    final viewIntent = View.of(Get.context!).viewInsets;
    return viewIntent.bottom > 0;
  }

  static Future<bool> isPhysicalDevice() async {
    return defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.android;
  }
  static void vibrate(Duration duration)
  {
    HapticFeedback.vibrate();
    Future.delayed(duration,() => HapticFeedback.vibrate());
  }
  static Future<void> setPreferedOriantation(List<DeviceOrientation> oriantation) async{
    await SystemChrome.setPreferredOrientations(oriantation);
  }
  static void hideStatusBar()
  {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: SystemUiOverlay.values);
  }
}
