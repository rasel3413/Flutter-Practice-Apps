import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Container(

        height: 200,
        width: 200,
        color: Colors.black,
        child:CustomPaint(
          painter:MyPainter(),
        ) ,
      ),

    );
  }
}

class MyPainter extends CustomPainter{
  @override
  void paint(Canvas canvas, Size size) {
   Path path=Path();
    Paint paint = Paint()
      ..color = Colors.blue
      ..style = PaintingStyle.fill;
   path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.6);
    path.quadraticBezierTo(100,100, 0, 0);
    path.lineTo(size.width, size.height);

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    throw UnimplementedError();
  }

}