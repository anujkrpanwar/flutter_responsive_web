import 'dart:math';

import 'package:flutter/material.dart';

class CustomDraw extends CustomPainter {
  late Paint painter;
  late double radius;

  CustomDraw(Color color, {this.radius = 0}) {
    painter = Paint()
      ..style = PaintingStyle.fill
      ..color = color;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();

    double width = size.width;
    double height = size.height;
    path.moveTo(0, 0);

    path.quadraticBezierTo(width * 0.25, height * 0.15, width * 0.5, height * 0.1);
    path.quadraticBezierTo(width * 0.75, height * 0.05, width * 1.0, height * 0.15);

    // path.cubicTo(
    //   width * 0.2,
    //   height * 0.1,
    //   width * 0.4,
    //   height * 0.15,
    //   width * 0.55,
    //   height * 0.1,
    // );

    // path.cubicTo(
    //   width * 0.55,
    //   height * 0.1,
    //   width * 0.8,
    //   height * 0.15,
    //   width,
    //   height * 0.1,
    // );

    path.lineTo(width, height);

    path.quadraticBezierTo(width * 0.75, height * 0.85, width * 0.5, height * 0.9);
    path.quadraticBezierTo(width * 0.5, height * 0.9, width * 0.25, height * 0.95);
    path.lineTo(0, height);
    // path.lineTo(0, height);

    canvas.drawPath(path, painter);

    // canvas.drawArc(
    //   Rect.fromCenter(
    //     center: Offset(width, height),
    //     width: 50,
    //     height: 50,
    //   ),
    //   0.5,
    //   2 * pi - 0.8,
    //   true,
    //   painter,
    // );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
