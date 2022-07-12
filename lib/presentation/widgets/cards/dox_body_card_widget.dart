import 'package:dox_financeiro/presentation/widgets/theme/colors.dart';
import 'package:flutter/material.dart';

class DoxBodyCard extends StatelessWidget {
  final Widget child;
  final Color backgroundColor;
  const DoxBodyCard({
    required this.child,
    this.backgroundColor = DoxColors.notW,
    Key? key,
  }) : super(key: key);

  static const double _externalContainerRadius = 30;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(_externalContainerRadius),
          topRight: Radius.circular(_externalContainerRadius),
        ),
      ),
      padding: const EdgeInsets.only(
        //TODO: maybe the padding has a pattern?
        left: 24,
        right: 24,
      ),
      child: child,
    );
  }
}
