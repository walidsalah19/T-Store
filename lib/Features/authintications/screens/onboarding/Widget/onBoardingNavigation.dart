import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:t_store/Features/authintications/controllers/OnBoardingController.dart';
import 'package:t_store/utils/Helper/HelperFunction.dart';
import 'package:t_store/utils/constants/AppColors.dart';

import '../../../../../utils/constants/Sizes.dart';
import '../../../../../utils/device/AppDeviceUtils.dart';

class OnBoardingNavigation extends StatelessWidget {
  const OnBoardingNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instans;
    bool dark = HelperFunction.isDark(context);
    return Positioned(
      bottom: AppDeviceUtils.getBottomSheetHieght() + 20,
      left: AppSizes.defaultSpace,
      child: SmoothPageIndicator(
        effect: ExpandingDotsEffect(
            activeDotColor: dark ? AppColorsC.light : AppColorsC.dark,
            dotHeight: 6),
        controller: controller.pageController,
        onDotClicked: controller.dotNavigatorClick,
        count: 3,
      ),
    );
  }
}
