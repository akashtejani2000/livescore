import 'dart:ui';

import 'package:flutter/material.dart';

class BottomRoundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class BottomNavigationBarRoundedClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..moveTo((size.width / 2) + 56, 28.0)
      ..cubicTo((size.width / 2) + 48, 28.0, (size.width / 2) + 38, 22,
          (size.width / 2) + 28, 12)
      ..cubicTo((size.width / 2) + 18, 4.5, (size.width / 2) + 8, 0.0,
          size.width / 2, 0.0)
      ..cubicTo((size.width / 2) - 8, 0.0, (size.width / 2) - 18, 4.5,
          (size.width / 2) - 28, 12)
      ..cubicTo((size.width / 2) - 38, 22, (size.width / 2) - 48, 28.0,
          (size.width / 2) - 56, 28.0)
      ..lineTo(0.0, 28.0)
      ..lineTo(0.0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 28.0)
      ..lineTo(size.width, 28.0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class BottomNavigationBarClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path()
      ..moveTo(0, 24.0)
      ..lineTo(size.width, 24)
      ..lineTo(size.width, size.height)
      ..lineTo(0, size.height)
      ..lineTo(0, 24.0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}
