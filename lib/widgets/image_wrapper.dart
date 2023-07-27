import 'package:flutter/material.dart';

class ImageWrapper extends StatelessWidget {
  final String image;
  final Color? bgColor;
  final double? width;

  const ImageWrapper({Key? key, required this.image, this.bgColor, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Container(
      color: bgColor ?? Colors.white,
      child: Image.asset(
        image,
        width: this.width ?? width,
        height: this.width ?? width / 1.618,
        fit: BoxFit.contain,
      ),
    );
  }
}
