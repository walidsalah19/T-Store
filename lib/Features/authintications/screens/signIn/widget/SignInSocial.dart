import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../../utils/constants/AppColors.dart';
import '../../../../../utils/constants/Imeges.dart';
import '../../../../../utils/constants/Sizes.dart';

class SignInSocial extends StatelessWidget {
  const SignInSocial({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: AppColorsC.gray),borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: AppSizes.iconMd,
              height: AppSizes.iconMd,
              image: AssetImage(Images.google),
            ),
          ),
        ),
        const SizedBox(
          width: AppSizes.lg,
        ),
        Container(
          decoration: BoxDecoration(border: Border.all(color: AppColorsC.gray),borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: AppSizes.iconLg,
              height: AppSizes.iconLg,
              image: AssetImage(Images.facebook),
            ),
          ),
        )

      ],
    );
  }
}
