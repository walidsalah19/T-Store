import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/AppTexts.dart';
import '../../../../../utils/constants/Imeges.dart';
import '../../../../../utils/constants/Sizes.dart';

class loginHeader extends StatelessWidget {
  const loginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Image(height: 120, image: AssetImage(Images.appLogo)),
        Text(AppText.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(
          height: AppSizes.sm,
        ),
        Text(AppText.loginTitle2,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
