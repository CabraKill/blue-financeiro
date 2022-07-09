import 'package:dox_financeiro/presentation/widgets/theme/dox_colors.dart';
import 'package:flutter/material.dart';

class DashedLine extends StatelessWidget {
  final double width;
  final double space;
  final double horizontalOffset;
  final Color color;

  const DashedLine(
      {this.width = 9,
      this.space = 5,
      this.horizontalOffset = 0,
      this.color = DoxColors.dashedLineColor,
      Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: _DashedLinePainter(
        width: width,
        space: space,
        horizontalOffset: horizontalOffset,
        color: color,
      ),
      child: Container(
          // width: double.infinity,
          ),
    );
  }
}

class _DashedLinePainter extends CustomPainter {
  final double width;
  final double space;
  final double horizontalOffset;
  final Color color;

  _DashedLinePainter({
    this.width = 9,
    this.space = 5,
    this.horizontalOffset = 0,
    this.color = DoxColors.dashedLineColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    double start = 0 + horizontalOffset;
    final paint = Paint()
      ..color = color
      ..strokeWidth = 1;
    while (start < size.width) {
      canvas.drawLine(Offset(start, 0), Offset(start + width, 0), paint);
      start += width + space;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
