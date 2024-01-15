
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:t_store/Features/authintications/controllers/OnBoardingController.dart';

import '../../../../../utils/constants/Sizes.dart';
import '../../../../../utils/device/AppDeviceUtils.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instans;
    return Positioned(
        top: AppDeviceUtils.getAppBarHeight(),
        right: AppSizes.defaultSpace,
        child: TextButton(
          onPressed: () {
            controller.skipPages(context);
          },
          child: const Text("Skip"),
        ));
  }
}
