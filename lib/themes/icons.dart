import 'package:flutter/material.dart';

Widget buildMaterialIconCircle(String imagePath, double size) {
  return Container(
    width: size,
    height: size,
    decoration: const BoxDecoration(
      shape: BoxShape.circle,
      color: Colors.white,
    ),
    child: Align(
      alignment: Alignment.center,
      child: Image.asset(
        imagePath,
        fit: BoxFit.contain,
        width: size,
        height: size,
      ),
    ),
  );
}
