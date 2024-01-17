import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/AppColors.dart';
import '../../../../../utils/constants/AppTexts.dart';

class LoginDividor extends StatelessWidget {
  const LoginDividor({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
              color: dark ? AppColorsC.light : AppColorsC.dark,
              thickness: .5,
              indent: 60,
              endIndent: 5,
            )),
        Text(AppText.orSignWith.capitalize!,
            style: Theme.of(context).textTheme.labelMedium),
        Flexible(
            child: Divider(
              color: dark ? AppColorsC.light : AppColorsC.dark,
              thickness: .5,
              indent: 5,
              endIndent: 60,
            ))
      ],
    );
  }
}
