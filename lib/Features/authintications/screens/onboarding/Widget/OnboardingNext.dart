import 'package:flutter/material.dart';
import 'package:t_store/Features/authintications/controllers/OnBoardingController.dart';

import '../../../../../utils/Helper/HelperFunction.dart';
import '../../../../../utils/constants/AppColors.dart';
import '../../../../../utils/constants/Sizes.dart';
import '../../../../../utils/device/AppDeviceUtils.dart';

class OnboardingNext extends StatelessWidget {
  const OnboardingNext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool dark =HelperFunction.isDark(context);

    return Positioned(
        right: AppSizes.defaultSpace,
        bottom: AppDeviceUtils.getBottomSheetHieght(),
        child: ElevatedButton(
          onPressed: () {
            OnBoardingController.instans.nextPage();
          },
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(), backgroundColor: dark ? AppColorsC.light : AppColorsC.dark),
          child: const Icon(Icons.arrow_forward_ios),
        ));
  }
}
