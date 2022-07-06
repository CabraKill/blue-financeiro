import 'package:dox_financeiro/domain/types/tab_tap_type.dart';
import 'package:dox_financeiro/presentation/pages/finances/widgets/finances_tabs/finances_tabs_text_widget.dart';
import 'package:dox_financeiro/presentation/widgets/theme/dox_colors.dart';
import 'package:flutter/material.dart';

class FinancesTabs extends StatelessWidget {
  final int currentIndex;
  final TabTapCallBack? onTabTap;
  const FinancesTabs({
    required this.currentIndex,
    this.onTabTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(43),
        color: DoxColors.notW,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        //TODO: analyse if it children generation should be dynamic
        children: [
          FinancesTabText(
            text: 'Recebidos',
            activated: currentIndex == 0,
            onTap: () => onTabTap?.call(0),
          ),
          FinancesTabText(
            text: 'A Receber',
            activated: currentIndex == 1,
            onTap: () => onTabTap?.call(1),
          ),
          FinancesTabText(
            text: 'Atrasados',
            activated: currentIndex == 2,
            onTap: () => onTabTap?.call(2),
          ),
        ],
      ),
    );
  }
}
