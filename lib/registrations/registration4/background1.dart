import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Background1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect rect = Rect.fromLTWH(0, 0, size.width, size.height * 0.80);
    Gradient gradient = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFFFD8B23),
        Color(0xFFF96213),
      ],
      stops: [
        0.0,
        0.4,
      ],
    );
    Paint paint = Paint();
    Path path = Path();
    paint.shader = gradient.createShader(rect);
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.16);
    path.quadraticBezierTo(
      size.width * 0.5,
      size.height * 0.7,
      size.width,
      size.height * 0.16,
    );
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    path.close();
    canvas.drawPath(path, paint);

    // TODO: If we want to paint circle we do this >>>
    /* Paint paint2 = Paint();
    paint2.color = Colors.white;
    canvas.drawCircle(Offset(size.width /2, size.height *0.42), 70, paint2);*/
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
