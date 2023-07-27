import 'package:flutter/material.dart';

class Clipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    double width = size.width;
    double height = size.height;
    double offset = 15.0;
    path.moveTo(0, height - (height - offset));
    path.lineTo(0, height);
    path.lineTo(width, height);
    path.lineTo(width, height - (height - offset));
    path.quadraticBezierTo(3 * width / 4, 0, width / 2, height - (height - offset));
    path.quadraticBezierTo(width / 4, 2 * offset, 0, height - (height - offset));

    path.moveTo(0, size.height);
    path.quadraticBezierTo(size.width * 0.25, size.height, size.width * 0.5, size.height * 0.95);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.95, size.width * 1.0, size.height * 0.95);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true; //if new instance have different instance than old instance
    //then you must return true;
  }
}
