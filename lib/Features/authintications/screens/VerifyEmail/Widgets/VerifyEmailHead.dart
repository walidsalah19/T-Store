import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/Helper/HelperFunction.dart';
import '../../../../../utils/constants/AppTexts.dart';
import '../../../../../utils/constants/Imeges.dart';
import '../../../../../utils/constants/Sizes.dart';

class VerifyEmailHead extends StatelessWidget {
  const VerifyEmailHead({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image(
            height: HelperFunction.screenHeight() * .2,
            width: HelperFunction.screenWidth(),
            image: const AssetImage(Images.verifyEmail)),
        Text(
          AppText.verifyEmail,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: AppSizes.md,
        ),
        Text(
          AppText.supportEmail,
          style: Theme.of(context).textTheme.headlineSmall,
        ),
        const SizedBox(
          height: AppSizes.md,
        ),
        Text(
          AppText.congratulation,
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }
}
