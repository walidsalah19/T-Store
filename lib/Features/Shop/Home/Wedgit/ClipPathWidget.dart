import 'package:flutter/cupertino.dart';

import '../../../../common/CustomShapes/CurvedEdges.dart';
import '../../../../utils/constants/AppColors.dart';
import 'circulContainer.dart';

class ClipPathWidget extends StatelessWidget {
  const ClipPathWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurvedEdges(),
      child: Container(
        padding: const EdgeInsets.all(0),
        color: AppColorsC.primaryColor,
        child: const SizedBox(
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
