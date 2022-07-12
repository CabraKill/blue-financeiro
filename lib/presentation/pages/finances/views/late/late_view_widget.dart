import 'package:dox_financeiro/domain/entities/finances/finances_payment_card_entity.dart';
import 'package:dox_financeiro/presentation/pages/finances/widgets/hours/hours_bottom_bar_widget.dart';
import 'package:dox_financeiro/presentation/pages/finances/widgets/payments/finances_payment_card_widget.dart';
import 'package:flutter/material.dart';

final _mockData = FinancesPaymentCardEntity(
  location: "Nome do Hospital",
  description: "Atendimento em ala de Observação",
  startTime: DateTime(2022, 10, 30, 12),
  endTime: DateTime(2022, 10, 30, 18),
  amount: 1280,
  date: DateTime(2022, 10, 30),
);

class FinancesLateView extends StatelessWidget {
  const FinancesLateView({Key? key}) : super(key: key);
  static const int _listLength = 3;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            //TODO: get this value from controller
            itemCount: _listLength,
            itemBuilder: (context, index) => Padding(
              padding:
                  //TODO: get this conditional value from controller
                  EdgeInsets.only(bottom: index == _listLength - 1 ? 20 : 10),
              child: FinancesPaymentCard.late(
                data: _mockData,
              ),
            ),
          ),
        ),
        //top padding
        const SizedBox(height: 20),
        const HoursBottomBar.late(
          moneyAmount: 4620,
          timeAmount: 24,
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}
