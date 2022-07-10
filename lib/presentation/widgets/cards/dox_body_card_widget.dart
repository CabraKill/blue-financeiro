import 'package:dox_financeiro/presentation/widgets/theme/colors.dart';
import 'package:flutter/material.dart';

class DoxBodyCard extends StatelessWidget {
  final Widget child;
  const DoxBodyCard({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 21),
      decoration: const BoxDecoration(
        color: DoxColors.notW,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      padding: const EdgeInsets.only(
        //TODO: maybe the padding has a pattern?
        left: 24,
        right: 24,
        top: 32,
      ),
      child: child,
    );
  }
}
