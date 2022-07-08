import 'package:dox_financeiro/domain/entities/finances_payment_card_entity.dart';
import 'package:dox_financeiro/presentation/utils/money_converter_util.dart';
import 'package:dox_financeiro/presentation/utils/time_converter_util.dart';
import 'package:dox_financeiro/presentation/widgets/right_circle_widget.dart';
import 'package:dox_financeiro/presentation/widgets/theme/dox_colors.dart';
import 'package:dox_financeiro/presentation/widgets/theme/typograph.dart';
import 'package:flutter/material.dart';

class FinancesPaymentCard extends StatelessWidget {
  final FinancesPaymentCardEntity data;
  const FinancesPaymentCard({
    required this.data,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            //TODO: add shadows
          ]),
      padding: const EdgeInsets.symmetric(
        horizontal: 9,
        vertical: 4,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  data.location,
                  style: DoxTypograph.title3,
                ),
                const SizedBox(height: 10),
                FractionallySizedBox(
                  widthFactor: 134 / 238,
                  child: Text(
                    data.description,
                    style: DoxTypograph.financesDescription,
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        '${TimeConverter.getTimeFormattedFromDateTime(data.startTime)} - ${TimeConverter.getTimeFormattedFromDateTime(data.endTime)}',
                        style: DoxTypograph.caption1.copyWith(
                          color: DoxColors.nonSelected,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        TimeConverter.getDateFormattedFromDateTime(data.date),
                        style: DoxTypograph.caption1.copyWith(
                          color: DoxColors.nonSelected,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(width: 10),
                  Container(
                    width: 40,
                    height: 40,
                    alignment: Alignment.center,
                    child: RighCircle(
                      color: DoxColors.primary.withOpacity(0.2),
                    ),
                  )
                ],
              ),
              const SizedBox(height: 4),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Valor',
                    style: DoxTypograph.caption2.copyWith(
                      color: DoxColors.nonSelected,
                    ),
                  ),
                  const SizedBox(width: 8),
                  Text(
                    MoneyConverterUtil.convertToSimpleMoney(data.amount),
                    style: DoxTypograph.caption1.copyWith(
                      color: DoxColors.primary,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
