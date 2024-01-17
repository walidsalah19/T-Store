import 'package:flutter/cupertino.dart';

import '../../utils/constants/Sizes.dart';

class AppSpacingStyle {
  static EdgeInsetsGeometry PaddingWithAppBarHeight = const EdgeInsets.only(
    top: AppSizes.appBarHeight,
    left: AppSizes.defaultSpace,
    bottom: AppSizes.defaultSpace,
    right: AppSizes.defaultSpace,
  );
}
