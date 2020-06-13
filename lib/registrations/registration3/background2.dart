import 'package:flutter/material.dart';

class Background2 extends CustomPainter {
  final double leftPoint;
  final double rightPoint;
  final double midWidthPoint1, midHighPoint2;

  Background2(
      {this.leftPoint,
      this.rightPoint,
      this.midWidthPoint1,
      this.midHighPoint2});

  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromLTWH(0, size.height * 0.35, size.width, size.height);

    Gradient gradient = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xFFFF3181),
        Color(0xFFFA7537),
      ],
      stops: [
        0.3,
        0.8,
      ],
    );
    Paint paint = Paint();
    Path path = Path();
    paint.shader = gradient.createShader(rect);
    paint.color = Colors.pink;
    path.lineTo(0, size.height * leftPoint);
    path.lineTo(size.width * midWidthPoint1, size.height * midHighPoint2);
    path.lineTo(size.width, size.height * rightPoint);
    path.lineTo(size.width, size.height);
    path.lineTo(0, size.height);

    path.close();
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
