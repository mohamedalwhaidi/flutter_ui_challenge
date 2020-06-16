import 'package:flutter/material.dart';


/*
* TODO: WE DON'T USE THIS CLASS BECAUSE IT'S TAKE ALLOT OF TIME
* */

class Background6 extends CustomPainter {
  Color _dark = Color(0XFF262628);
  Color _red = Color(0XFFEB4137);
  Color _orange = Color(0XFFFFA810);
  Color _blue = Color(0XFF2273D7);

  @override
  void paint(Canvas canvas, Size size) {
    _drawDarkBackground(canvas, size);
    _drawOrangeCurves(canvas, size);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

  void _drawOrangeCurves(Canvas canvas, Size size) {
    Paint paint = Paint();
    Path path = Path();
    path.lineTo(0, 0);
    path.lineTo(0, size.height * 0.3);
    path.quadraticBezierTo(size.width *0.2 , size.height * 0.45,
        size.width *0.2, size.height * 0.2);
    path.quadraticBezierTo(size.width *0.2 +20 , size.height * 0.45 -20,
        size.width *0.2, size.height * 0.4);
    path.lineTo(size.width, size.height * 0.5);
    path.lineTo(size.width, 0);
    path.close();
    paint.color = _orange;
    canvas.drawPath(path, paint);
  }

  void _drawDarkBackground(Canvas canvas, Size size) {
    Paint paint = Paint();
    paint.color = _dark;
    Rect rectDark = Rect.fromLTWH(0, 0, size.width, size.height);
    canvas.drawRect(rectDark, paint);
  }
}
