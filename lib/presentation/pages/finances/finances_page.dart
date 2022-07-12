import 'package:dox_financeiro/presentation/pages/finances/views/late/late_view_widget.dart';
import 'package:dox_financeiro/presentation/pages/finances/views/received/received_view_widget.dart';
import 'package:dox_financeiro/presentation/pages/finances/views/toReceive/to_receive_view_widget.dart';
import 'package:dox_financeiro/presentation/pages/finances/widgets/finances_tabs/finances_tabs_widget.dart';
import 'package:dox_financeiro/presentation/widgets/appBar/secundary_app_bar.dart';
import 'package:dox_financeiro/presentation/widgets/cards/dox_background_widget.dart';
import 'package:dox_financeiro/presentation/widgets/cards/dox_body_card_widget.dart';
import 'package:flutter/material.dart';

class FinancesPage extends StatefulWidget {
  const FinancesPage({Key? key}) : super(key: key);

  @override
  State<FinancesPage> createState() => _FinancesPageState();
}

class _FinancesPageState extends State<FinancesPage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DoxAppBar(
        title: "Financeiro",
        onBackTap: () {
          Navigator.pop(context);
        },
      ),
      body: DoxBackground(
          child:
              Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 21.0),
            child: DoxBodyCard(
              child: Builder(builder: (context) {
                if (_currentIndex == 0) {
                  return const FinancesReceivedView();
                } else if (_currentIndex == 1) {
                  return const FinancesToReceiveView();
                } else {
                  return const FinancesLateView();
                }
              }),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: FinancesTabs(
              currentIndex: _currentIndex,
              onTabTap: (index) => setState(() {
                _currentIndex = index;
              }),
            ),
          ),
        ],
      )),
    );
  }
}

class SortIcon extends DoxIconButton {
  const SortIcon({
    required super.color,
    super.onTap,
    super.key,
  });

  @override
  Widget body(BuildContext context) {
    return Icon(
      Icons.sort,
      color: color,
    );
  }
}

class LeftArrowIcon extends DoxIconButton {
  const LeftArrowIcon({
    required super.color,
    super.key,
  });

  @override
  Widget body(BuildContext context) {
    return SizedBox(
      width: 14,
      height: 24,
      child: Icon(
        Icons.arrow_back_ios,
        color: color,
      ),
    );
  }
}

abstract class DoxIconButton extends StatelessWidget {
  final VoidCallback? onTap;
  final Color color;
  const DoxIconButton({
    required this.color,
    this.onTap,
    Key? key,
  }) : super(key: key);

  Widget body(BuildContext context);

  @override
  Widget build(BuildContext context) {
    return Center(child: body(context));
  }
}
