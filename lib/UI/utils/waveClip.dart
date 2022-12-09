import 'package:flutter/material.dart';


class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // double width = size.width;
    // double height = size.height;

    // Always start at the left corner (0,0)

    Path path0 = Path();
    path0.moveTo(0, 0);
    path0.quadraticBezierTo(size.width * -0.0716667, size.height * 0.2953571, 0,
        size.height * 0.4642857);
    path0.cubicTo(
        size.width * 0.0052083,
        size.height * 0.6400000,
        size.width * 0.9897917,
        size.height * 0.4267857,
        size.width,
        size.height * 0.7028571);
    path0.quadraticBezierTo(
        size.width * 1.0183333, size.height * 0.5614286, size.width, 0);
    path0.lineTo(size.width * 0.3750000, 0);
    path0.quadraticBezierTo(
        size.width * 0.2143750, 0, size.width * 0.1608333, 0);

    // straight line to the first point
    path0.close();
    return path0;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

