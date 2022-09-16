import 'package:flutter/material.dart';

/// Clip widget in wave shape
class WaveClipper extends CustomClipper<Path> {
  /// reverse the wave direction in vertical axis
  bool reverse;

  /// flip the wave direction horizontal axis
  bool flip;

  WaveClipper({this.reverse = false, this.flip = false});

  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, 450);

    var firstControlPoint = Offset(size.width / 4, 650);
    var firstEndPoint = Offset(size.width / 2.2, 500);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
    Offset(size.width - (size.width / 4), 350);
    var secondEndPoint = Offset(size.width, 550);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 100);
    path.lineTo(size.width, 0.0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
