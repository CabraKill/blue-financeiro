import 'package:dox_financeiro/presentation/widgets/theme/colors.dart';
import 'package:flutter/material.dart';

class DoxBackground extends StatelessWidget {
  final Widget child;
  const DoxBackground({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: DoxColors.tertiary,
      child: child,
    );
  }
}