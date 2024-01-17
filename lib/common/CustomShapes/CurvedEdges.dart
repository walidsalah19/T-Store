

import 'package:flutter/cupertino.dart';

class CurvedEdges extends CustomClipper<Path>
{
  @override
  Path getClip(Size size) {
    var path=Path();
    path.lineTo(0, size.height);

    var firstCurve1=Offset(0, size.height-20);
    var firstCurve2=Offset(30, size.height-20);
    path.quadraticBezierTo(firstCurve1.dx, firstCurve1.dy, firstCurve2.dx, firstCurve2.dy);


    var secondCurve1=Offset(0, size.height-20);
    var secondCurve2=Offset(size.width-30, size.height-20);
    path.quadraticBezierTo(secondCurve1.dx, secondCurve1.dy, secondCurve2.dx, secondCurve2.dy);

    var thirdCurve1=Offset(size.width, size.height-20);
    var thirdCurve2=Offset(size.width, size.height);
    path.quadraticBezierTo(thirdCurve1.dx, thirdCurve1.dy, thirdCurve2.dx, thirdCurve2.dy);


    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
   return false;
  }

  
}