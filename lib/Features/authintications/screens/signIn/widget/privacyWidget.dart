import 'package:flutter/material.dart';

import '../../../../../utils/constants/AppColors.dart';
import '../../../../../utils/constants/AppTexts.dart';

class privacyWidget extends StatelessWidget {
  const privacyWidget({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: true,
          onChanged: (value) {},
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: ' ${AppText.agree} ',
              style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: ' ${AppText.privacy} ',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark
                    ? AppColorsC.primaryColor
                    : AppColorsC.primaryColor,
                decoration: TextDecoration.underline,
                decorationColor: dark
                    ? AppColorsC.primaryColor
                    : AppColorsC.primaryColor,
              )),
          TextSpan(
              text: ' and ', style: Theme.of(context).textTheme.bodySmall),
          TextSpan(
              text: AppText.term,
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                color: dark
                    ? AppColorsC.primaryColor
                    : AppColorsC.primaryColor,
                decoration: TextDecoration.underline,
                decorationColor: dark
                    ? AppColorsC.primaryColor
                    : AppColorsC.primaryColor,
              ))
        ])),
      ],
    );
  }
}
