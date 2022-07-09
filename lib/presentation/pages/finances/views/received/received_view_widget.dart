import 'package:dox_financeiro/domain/entities/finances/finances_payment_card_entity.dart';
import 'package:dox_financeiro/presentation/mock_data/finances/finances_graph_mock.dart';
import 'package:dox_financeiro/presentation/pages/finances/widgets/payments/finances_graph_tile_widget.dart';
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

class FinancesReceivedView extends StatelessWidget {
  //TODO: receive the value for list
  //TODO: receive the value for the graph
  const FinancesReceivedView({Key? key}) : super(key: key);
  static const int _listLength = 10;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FinancesGraphTile(
          graphData: FinancesGraphMockData.graphMockData,
        ),
        const SizedBox(height: 20),
        Expanded(
          child: ListView.builder(
            //TODO: get this value from controller
            itemCount: _listLength,
            itemBuilder: (context, index) => Padding(
              padding:
                  //TODO: get this conditional value from controller
                  EdgeInsets.only(bottom: index == _listLength - 1 ? 20 : 10),
              child: FinancesPaymentCard.received(
                data: _mockData,
              ),
            ),
          ),
        ),
        //top padding
        const SizedBox(height: 20),
        const HoursBottomBar.received(
          moneyAmount: 35650,
          timeAmount: 450,
        ),
        const SizedBox(height: 32),
      ],
    );
  }
}
