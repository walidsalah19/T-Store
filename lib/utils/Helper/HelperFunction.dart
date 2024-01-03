import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HelperFunction{
  static Color? getColors(String color) {
    if (color == "red") {
      return Colors.red;
    } else if (color == "green") {
      return Colors.green;
    } else if (color == "blue") {
      return Colors.blue;
    } else if (color == "pink") {
      return Colors.pink;
    } else if (color == "grey") {
      return Colors.grey;
    } else if (color == "black") {
      return Colors.black;
    } else if (color == "purple") {
      return Colors.purple;
    } else if (color == "blue") {
      return Colors.blue;
    } else if (color == "indigo") {
      return Colors.indigo;
    } else if (color == "teal") {
      return Colors.teal;
    } else if (color == "brown") {
      return Colors.brown;
    } else if (color == "white") {
      return Colors.white;
    }
  }

  static void showSnackBar(String message) {
    ScaffoldMessenger.of(Get.context!)
        .showSnackBar(SnackBar(content: Text(message)));
  }

  static void showAlertDialog(String title, String message) {
    showDialog(
      context: Get.context!,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Close'),
            ),
          ],
        );
      },
    );
  }

  static void navigateToScreen(BuildContext context, Widget screen) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => screen));
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}';
    }
  }

  static bool isDark(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }
  static Size screenSize()
  {
    return MediaQuery.of(Get.context!).size;
  }
  static double screenHeight()
  {
    return MediaQuery.of(Get.context!).size.height;
  }
  static double screenWidth()
  {
    return MediaQuery.of(Get.context!).size.width;
  }
}