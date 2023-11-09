import 'package:flutter/material.dart';

import 'package:scorelah/utils.dart';

class CustomAnimateBorder extends CustomPainter {
  final double animationPercent; // 0.0 to 1.0
  CustomAnimateBorder(this.animationPercent);
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint();
    paint.strokeWidth = 2;
    paint.color = const Color(0xFF828282);
    paint.style = PaintingStyle.stroke;

    var path = Path();
    path.moveTo(0, size.height / 2);

    path.lineTo(0, 20);
    path.quadraticBezierTo(0, 0, 20, 0);
    path.lineTo(size.width - 20, 0);
    path.quadraticBezierTo(size.width, 0, size.width, 20);
    path.lineTo(size.width, size.height / 2);

    var path2 = Path();
    path2.moveTo(0, size.height / 2);

    path2.lineTo(0, size.height - 20);
    path2.quadraticBezierTo(0, size.height, 20, size.height);
    path2.lineTo(size.width - 20, size.height);
    path2.quadraticBezierTo(
        size.width, size.height, size.width, size.height - 20);
    path2.lineTo(size.width, size.height / 2);

    final p1 = Utils.createAnimatedPath(path, animationPercent);
    final p2 = Utils.createAnimatedPath(path2, animationPercent);

    canvas.drawPath(p1, paint);
    canvas.drawPath(p2, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
