import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:t_store/Features/authintications/screens/Login/Login.dart';

import '../../../utils/Helper/HelperFunction.dart';

class OnBoardingController extends GetxController {
  static OnBoardingController get instans => Get.find();
  final pageController=PageController();
  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(index) => currentPageIndex.value=index;

  void dotNavigatorClick(index) {
    currentPageIndex.value=index;
    pageController.jumpToPage(index);
  }

  void nextPage() {
    if(currentPageIndex.value==2)
      {

      }else{
      int page=currentPageIndex.value+1;
      pageController.jumpToPage(page);
    }
  }

  void skipPages(BuildContext context) {
   /* currentPageIndex.value=2;
    pageController.jumpToPage(2);*/
    HelperFunction.navigateToScreen(context,const Login());
  }
}
