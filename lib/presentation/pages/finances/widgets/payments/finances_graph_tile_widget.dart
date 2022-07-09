import 'package:dox_financeiro/domain/entities/finances/finances_graph_month_data_entity.dart';
import 'package:dox_financeiro/domain/entities/finances/finances_graph_entity.dart';
import 'package:dox_financeiro/presentation/utils/money_converter_util.dart';
import 'package:dox_financeiro/presentation/widgets/finances/finances_graph_widget.dart';
import 'package:dox_financeiro/presentation/widgets/theme/dox_colors.dart';
import 'package:dox_financeiro/presentation/widgets/theme/typograph.dart';
import 'package:flutter/material.dart';

//TODO: check if it is necessary to be statefull
//TODO: show whe different states of this widget in the showcase
class FinancesGraphTile extends StatefulWidget {
  final FinancesGraphEntity graphData;
  const FinancesGraphTile({
    required this.graphData,
    Key? key,
  }) : super(key: key);

  @override
  State<FinancesGraphTile> createState() => _FinancesGraphTileState();
}

class _FinancesGraphTileState extends State<FinancesGraphTile> {
  FinancesGraphMonthDataEntity? _currentData;

  //TODO: change to block
  @override
  void initState() {
    super.initState();
    _currentData = widget.graphData.data.first;
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 380 / 287,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.white,
          boxShadow: [
            //TODO: config the shadow
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 10,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Text(
              widget.graphData.title,
              style: DoxTypograph.cellTitle,
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'R\$',
                  style: DoxTypograph.caption1.copyWith(
                    color: DoxColors.nonSelected,
                  ),
                ),
                Text(
                  _currentData != null
                      ? MoneyConverter.convertToMoneyWith2(
                          _currentData!.received)
                      : '----',
                  style: DoxTypograph.fiancesGraphValue.copyWith(
                    color: DoxColors.primary,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Expanded(
              child: Align(
                  child: AspectRatio(
                //TODO: verify with designer this sizing
                aspectRatio: 295 / 159,
                child: FinancesGraphWidget(
                  dataList: widget.graphData.data,
                ),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
