import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final Offset offsetRight = Offset(330, 100);
final Offset offsetLeft = Offset(330, 100);
final Offset offsetShadowRight = Offset((330.0 - 2), 100.0 - 3);
final Offset offsetShadowLeft = Offset((330.0 - 2), 100.0 - 3);
final Color colorOfShadow = Colors.black.withOpacity(0.5);
final double elevationOfShadow = 4.0;

class BackgroundCircle1 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect rect1 = Rect.fromLTWH(0, 0, size.width, size.height);
    Gradient gradient1 = LinearGradient(
      begin: Alignment.topLeft,
      end: Alignment.bottomRight,
      colors: [
        Color(0xffe33f0a),
        Color(0xffe6186e),
      ],
      stops: [
        0.0,
        0.8,
      ],
    );
    Paint paint1 = Paint();
    paint1.shader = gradient1.createShader(rect1);
    Path path3 = Path();
    Rect rect1_1 = Rect.fromCircle(center: offsetShadowRight, radius: 403);
    path3.addOval(rect1_1);
    canvas.drawShadow(path3, colorOfShadow, elevationOfShadow, true);
    canvas.drawCircle(offsetRight, 350, paint1);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class BackgroundCircle2 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect rect2 = Rect.fromLTWH(0, 0, size.width, size.height);
    Gradient gradient2 = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color(0xfff06234),
        Color(0xffff65a5),
      ],
      stops: [
        0.0,
        0.8,
      ],
    );
    Paint paint2 = Paint();
    paint2.shader = gradient2.createShader(rect2);
    Path path2 = Path();
    Rect rect2_2 = Rect.fromCircle(center: offsetShadowRight, radius: 222);
    path2.addOval(rect2_2);
    canvas.drawShadow(path2, colorOfShadow, elevationOfShadow + 20, true);
    canvas.drawCircle(offsetRight, 220, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class BackgroundCircle3 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect rect3 = Rect.fromLTWH(0, 0, size.width, size.height);
    Gradient gradient3 = LinearGradient(
      begin: Alignment.topRight,
      end: Alignment.bottomLeft,
      colors: [
        Color(0xffff8a64),
        Color(0xffff65a5),
      ],
      stops: [
        0.0,
        0.2,
      ],
    );
    Paint paint3 = Paint();
    paint3.shader = gradient3.createShader(rect3);
    Path path3 = Path();
    Rect rect3_3 = Rect.fromCircle(center: offsetShadowRight, radius: 135);
    path3.addOval(rect3_3);
    canvas.drawShadow(path3, colorOfShadow, elevationOfShadow, true);
    canvas.drawCircle(offsetRight, 130, paint3);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class BackgroundCircle4 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect rect4 = Rect.fromLTWH(0, size.height / 2, size.width, size.height);
    Gradient gradient4 = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xffF94B4B),
        Color(0xffC53B6C),
      ],
      stops: [
        0.0,
        0.8,
      ],
    );
    Paint paint4 = Paint();
    paint4.shader = gradient4.createShader(rect4);
    Path path4 = Path();
    Rect rect4_4 = Rect.fromCircle(
        center: Offset((-80.0 + 2), (size.height - 175) -20), radius: 310);
    path4.addOval(rect4_4);
    canvas.drawShadow(path4, colorOfShadow, elevationOfShadow+10, true);
    canvas.drawCircle(Offset(-80, size.height - 175), 300, paint4);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class BackgroundCircle5 extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Rect rect5 = Rect.fromLTWH(0, size.height / 2, size.width, size.height);
    Gradient gradient5 = LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xffFC6E6E),
        Color(0xffBD0F6B),
      ],
      stops: [
        0.2,
        0.9,
      ],
    );
    Paint paint5 = Paint();
    paint5.shader = gradient5.createShader(rect5);
    Path path5 = Path();
    Rect rect5_5 = Rect.fromCircle(
        center: Offset((-80.0), (size.height - 175) -20), radius: 195);
    path5.addOval(rect5_5);
    canvas.drawShadow(path5, colorOfShadow, elevationOfShadow+20, true);
    canvas.drawCircle(Offset(-80, size.height - 175), 190, paint5);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
