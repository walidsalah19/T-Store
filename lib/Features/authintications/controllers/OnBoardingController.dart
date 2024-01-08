import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instans => Get.find();
  final pageController=PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value=index;

  void dotNavigatorClick(index) {
    currentPageIndex.value=index;
    pageController.jumpTo(index);
  }

  void nextPage() {
    if(currentPageIndex.value==2)
      {

      }else{
      double page=currentPageIndex.value+1;
      pageController.jumpTo(page);
    }
  }

  void skipPages() {
    currentPageIndex.value=2;
    pageController.jumpTo(2);
  }
}
