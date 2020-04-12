import 'package:flutter/material.dart';

class WavePathPainter extends CustomPainter {
  final Color _boundaryColor;
  final double _boundaryWidth;

  const WavePathPainter(this._boundaryColor, this._boundaryWidth);

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..style = PaintingStyle.stroke
      ..strokeWidth = 8.0
      ..color = _boundaryColor;

    var path = new Path();
    var halfBoundaryWidth = _boundaryWidth / 2;

    path.moveTo(size.width - (60 - halfBoundaryWidth), 0.0);

    var firstControlPoint = Offset(size.width, size.height / 4);
    var firstEndPoint =
        Offset(size.width - (50 - halfBoundaryWidth), size.height / 2.25);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint = Offset(size.width - (110 - halfBoundaryWidth),
        size.height - (size.height / 3.25));
    var secondEndPoint =
        Offset(size.width - (70 - halfBoundaryWidth), size.height);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.moveTo(0.0, size.height);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
