import 'package:flutter/cupertino.dart';

import '../../../../common/CustomShapes/CurvedEdges.dart';

class ClipPathWidget extends StatelessWidget {
  const ClipPathWidget({
    super.key, required this.child,
  });
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CurvedEdges(),
      child: child
    );
  }
}
