import 'package:dox_financeiro/presentation/widgets/icon_assets.dart';
import 'package:dox_financeiro/presentation/widgets/theme/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class RighCircle extends StatelessWidget {
  final Color color;
  const RighCircle({
    required this.color,
    Key? key,
  }) : super(key: key);

  static const double _size = 33.33;
  static const double _iconSize = 14.07;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: _size,
      height: _size,
      //circle decoration
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      alignment: Alignment.center,
      child: SvgPicture.asset(
        DoxIconAssets.arrowRight,
        height: _iconSize,
        color: DoxColors.tertiary,
      ),
    );
  }
}
