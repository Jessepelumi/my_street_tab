import 'package:flutter/material.dart';

class CustomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    double height = size.height;
    double width = size.width;
    //double cornerRadius = 30.0;

    path.lineTo(0.0, 0.0);
    path.lineTo(0.0, height);
    path.lineTo(width * 0.1, height * 0.9);
    path.lineTo(width * 0.9, height * 0.9);
    path.lineTo(width, height);
    path.lineTo(width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}