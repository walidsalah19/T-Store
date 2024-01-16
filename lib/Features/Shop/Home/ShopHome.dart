import 'package:flutter/material.dart';
import 'package:t_store/common/CustomShapes/CurvedEdges.dart';
import 'package:t_store/utils/constants/AppColors.dart';

import 'Wedgit/ClipPathWidget.dart';
import 'Wedgit/circulContainer.dart';

class ShopHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPathWidget(),
          ],
        ),
      ),
    );
  }
}
