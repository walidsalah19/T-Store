import 'package:date_picker_timeline/extra/color.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:t_store/Features/authintications/screens/onboarding/Widget/onBoardingNavigation.dart';
import 'package:t_store/utils/constants/AppTexts.dart';
import 'package:t_store/utils/constants/Imeges.dart';
import 'package:t_store/utils/constants/Sizes.dart';
import 'package:t_store/utils/device/AppDeviceUtils.dart';

import 'Widget/OnBoardingSkip.dart';
import 'Widget/onBoardingPage.dart';

class OnBoardingScreens extends StatelessWidget {
  const OnBoardingScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
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
          OnBoardingNavigation(), // PageController
        ],
      ),
    );
  }
}

