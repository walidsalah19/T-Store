import 'package:flutter/material.dart';

import '../../../../utils/Helper/HelperFunction.dart';
import '../../../../utils/constants/AppColors.dart';
import '../../../../utils/constants/Sizes.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
    required this.title,
    this.iconData = Icons.search,
    this.showBackground = true,
    this.showBorder = true,
  });

  final String title;
  final IconData iconData;
  final bool showBackground, showBorder;

  @override
  Widget build(BuildContext context) {
    final dark = HelperFunction.isDark(context);
    return Padding(
      padding: const EdgeInsets.all(AppSizes.borderRadiusLg),
      child: Container(
        width: HelperFunction.screenWidth(),
        padding: const EdgeInsets.all(AppSizes.cardRedLg),
        decoration: BoxDecoration(
            color: showBackground
                ? dark
                    ? AppColorsC.dark
                    : AppColorsC.light
                : Colors.transparent,
            borderRadius: BorderRadius.circular(AppSizes.borderRadiusLg),
            border: showBorder ? Border.all(color: AppColorsC.gray) : null),
        child: Row(children: [
          Icon(
            iconData,
            color: Colors.black,
          ),
          const SizedBox(
            height: AppSizes.spaceBtItems,
          ),
          Text(title,style: Theme.of(context).textTheme.labelLarge,),
        ]),
      ),
    );
  }
}
