
import 'package:flutter/cupertino.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:t_store/utils/Helper/HelperFunction.dart';
import 'package:t_store/utils/constants/AppColors.dart';

import '../../../../../utils/constants/Sizes.dart';
import '../../../../../utils/device/AppDeviceUtils.dart';

class OnBoardingNavigation extends StatelessWidget {
  OnBoardingNavigation({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    bool dark =HelperFunction.isDark(context);
    return Positioned(
      bottom: AppDeviceUtils.getBottomSheetHieght(),
      left: AppSizes.defaultSpace,
      child: SmoothPageIndicator(
        effect:ExpandingDotsEffect(
            activeDotColor:dark ? AppColors.dark : AppColors.light, dotHeight: 6),
        controller: PageController(),
        count: 3,
      ),
    );
  }
}