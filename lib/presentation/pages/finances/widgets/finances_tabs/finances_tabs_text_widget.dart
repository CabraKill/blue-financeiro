import 'package:dox_financeiro/presentation/widgets/theme/dox_colors.dart';
import 'package:dox_financeiro/presentation/widgets/theme/typograph.dart';
import 'package:flutter/material.dart';

class FinancesTabText extends StatelessWidget {
  final String text;
  final bool activated;
  final VoidCallback? onTap;
  const FinancesTabText({
    required this.text,
    required this.activated,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: activated ? DoxColors.cyan : DoxColors.notW,
          borderRadius: BorderRadius.circular(43),
        ),
        padding:
            EdgeInsets.symmetric(horizontal: activated ? 20 : 10, vertical: 5),
        child: Text(
          text,
          style:
              activated ? DoxTypograph.tabSelected : DoxTypograph.tabUnSelected,
        ),
      ),
    );
  }
}
