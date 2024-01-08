import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:t_store/Features/authintications/controllers/OnBoardingController.dart';
import 'package:t_store/Features/authintications/screens/onboarding/Widget/onBoardingNavigation.dart';
import 'package:t_store/utils/constants/AppTexts.dart';
import 'package:t_store/utils/constants/Imeges.dart';

import 'Widget/OnBoardingSkip.dart';
import 'Widget/OnboardingNext.dart';
import 'Widget/onBoardingPage.dart';

class OnBoardingScreens extends StatelessWidget {
  const OnBoardingScreens({super.key});
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              onBoardingPage(
                  image: Images.onBoardingImage1,
                  title: AppText.onBoardingTitle,
                  subTitle: AppText.onBoardingSubTitle),
              onBoardingPage(
                  image: Images.onBoardingImage2,
                  title: AppText.onBoardingTitle2,
                  subTitle: AppText.onBoardingSubTitle2),
              onBoardingPage(
                  image: Images.onBoardingImage3,
                  title: AppText.onBoardingTitle3,
                  subTitle: AppText.onBoardingSubTitle3),
            ],
          ),
          OnBoardingSkip(),
          OnBoardingNavigation(),
          OnboardingNext() // PageController
        ],
      ),
    );
  }
}
