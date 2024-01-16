import 'package:flutter/cupertino.dart';
import 'package:t_store/utils/constants/AppColors.dart';

class circulContainer extends StatelessWidget {
  const circulContainer({
    super.key,
    this.width,
    this.height,
    required this.radius,
    required this.pading,
    this.child,
    this.background=AppColorsC.textWhite,
  });

  final double? width;
  final double? height;
  final double radius;
  final double pading;
  final Widget? child;
  final Color background;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: 400,
      padding: EdgeInsets.all(0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(400),
        color: background.withOpacity(.1),
      ),
      child: child,
    );
  }
}
