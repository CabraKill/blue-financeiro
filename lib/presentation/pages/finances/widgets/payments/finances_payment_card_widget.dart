import 'package:dox_financeiro/domain/entities/finances_payment_card_entity.dart';
import 'package:dox_financeiro/presentation/utils/time_converter_util.dart';
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                data.location,
                style: DoxTypograph.title3,
              ),
              const Padding(padding: EdgeInsets.only(top: 10)),
              Text(
                data.description,
                style: DoxTypograph.financesDescription,
              )
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                '${TimeConverter.getTimeFormattedFromDateTime(data.startTime)} - ${TimeConverter.getTimeFormattedFromDateTime(data.endTime)}',
                style: DoxTypograph.caption1.copyWith(
                  color: DoxColors.nonSelected,
                ),
              ),
              Text(
                TimeConverter.getDateFormattedFromDateTime(data.date),
                style: DoxTypograph.caption1.copyWith(
                  color: DoxColors.nonSelected,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
