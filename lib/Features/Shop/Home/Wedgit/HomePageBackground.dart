import 'package:flutter/cupertino.dart';

import '../../../../utils/constants/AppColors.dart';
import 'ClipPathWidget.dart';
import 'circulContainer.dart';

class HomePageBackground extends StatelessWidget {
  const HomePageBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPathWidget(
      child:Container(
        padding: const EdgeInsets.all(0),
        color: AppColorsC.primaryColor,
        child:  const SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: circulContainer(
                  width: 400,
                  height: 400,
                  radius: 400,
                  pading: 0,
                  background: AppColorsC.textWhite,
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: circulContainer(
                  width: 400,
                  height: 400,
                  radius: 400,
                  pading: 0,
                  background: AppColorsC.textWhite,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
