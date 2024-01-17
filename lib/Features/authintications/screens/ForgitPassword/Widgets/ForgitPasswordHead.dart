
import 'package:flutter/material.dart';

import '../../../../../utils/Helper/HelperFunction.dart';
import '../../../../../utils/constants/AppTexts.dart';
import '../../../../../utils/constants/Imeges.dart';
import '../../../../../utils/constants/Sizes.dart';

class ForgitPasswordHead extends StatelessWidget {
  const ForgitPasswordHead({
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
          AppText.resetPassword,
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
          AppText.resetPasswordMs,
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }
}
