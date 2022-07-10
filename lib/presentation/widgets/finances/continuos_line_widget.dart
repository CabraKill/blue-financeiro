import 'package:dox_financeiro/presentation/widgets/theme/dox_colors.dart';
import 'package:flutter/material.dart';

class ContinuosLine extends StatelessWidget {
  const ContinuosLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1,
      width: double.infinity,
      color: DoxColors.dashedLineColor,
    );
  }
}
