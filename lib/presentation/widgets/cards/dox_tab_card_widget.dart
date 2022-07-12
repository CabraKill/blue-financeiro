import 'package:dox_financeiro/presentation/widgets/theme/colors.dart';
import 'package:dox_financeiro/presentation/widgets/theme/typograph.dart';
import 'package:flutter/material.dart';

class DoxTabCard extends StatelessWidget {
  final String title;
  final Widget icon;
  final VoidCallback? onTap;
  const DoxTabCard({
    required this.title,
    required this.icon,
    this.onTap,
    Key? key,
  }) : super(key: key);
  static const double _iconBoxSize = 30;
  static const double _containerInternalPadding = 10;
  static const double _containerMargin = 4;
  static const double _minimaltextContainerWidth = 71;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.all(_containerMargin),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: DoxColors.primary,
        ),
        padding: const EdgeInsets.all(_containerInternalPadding),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: _iconBoxSize,
              height: _iconBoxSize,
              alignment: Alignment.center,
              child: icon,
            ),
            Container(
              constraints: const BoxConstraints(
                minWidth: _minimaltextContainerWidth,
              ),
              child: Text(
                title,
                style: DoxTypograph.tabTitleCard.copyWith(
                  color: DoxColors.tertiary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
