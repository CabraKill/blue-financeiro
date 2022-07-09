import 'package:dox_financeiro/presentation/utils/money_converter_util.dart';
import 'package:dox_financeiro/presentation/utils/time_converter_util.dart';
import 'package:dox_financeiro/presentation/widgets/theme/dox_colors.dart';
import 'package:dox_financeiro/presentation/widgets/theme/typograph.dart';
import 'package:flutter/material.dart';
import 'package:iconly/iconly.dart';

//TODO: maybe use an entity here
//TODO: change name
class HoursBottomBar extends StatelessWidget {
  final int timeAmount;
  final double moneyAmount;
  final Color iconColor;
  const HoursBottomBar({
    required this.timeAmount,
    required this.moneyAmount,
    required this.iconColor,
    Key? key,
  }) : super(key: key);

  const HoursBottomBar.received({
    required this.timeAmount,
    required this.moneyAmount,
    Key? key,
  })  : iconColor = DoxColors.primary,
        super(key: key);

  const HoursBottomBar.toReceive({
    required this.timeAmount,
    required this.moneyAmount,
    Key? key,
  })  : iconColor = DoxColors.green,
        super(key: key);

  const HoursBottomBar.late({
    required this.timeAmount,
    required this.moneyAmount,
    Key? key,
  })  : iconColor = DoxColors.orange,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(33),
      ),
      child: Row(children: [
        Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: iconColor,
          ),
          padding: const EdgeInsets.all(8),
          child: const Icon(
            IconlyBroken.paper_plus,
            color: Colors.white,
            size: 24,
          ),
        ),
        const Spacer(),
        Text(
          'Horas:',
          style: DoxTypograph.timeMoneyTitle,
        ),
        const SizedBox(width: 4),
        Text(
          TimeConverter.getSimpleTimeFromDateTime(timeAmount),
          style: DoxTypograph.timeMoneyValue,
        ),
        const SizedBox(width: 20),
        Text(
          'Total: ',
          style: DoxTypograph.timeMoneyTitle,
        ),
        const SizedBox(width: 4),
        Text(
          MoneyConverterUtil.convertToMoneyWith2(moneyAmount),
          style: DoxTypograph.timeMoneyValue,
        ),
        const SizedBox(width: 20),
      ]),
    );
  }
}
