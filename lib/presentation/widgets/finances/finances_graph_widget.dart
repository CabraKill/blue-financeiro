import 'package:dox_financeiro/domain/entities/finances/finances_graph_month_data_entity.dart';
import 'package:dox_financeiro/presentation/utils/time_converter_util.dart';
import 'package:dox_financeiro/presentation/widgets/finances/dashed_line_widget.dart';
import 'package:flutter/material.dart';

class FinancesGraphWidget extends StatefulWidget {
  final List<FinancesGraphMonthDataEntity> dataList;
  const FinancesGraphWidget({
    required this.dataList,
    Key? key,
  }) : super(key: key);

  @override
  State<FinancesGraphWidget> createState() => _FinancesGraphWidgetState();
}

class _FinancesGraphWidgetState extends State<FinancesGraphWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              // Text("oi"),
              DashedLine(),
              DashedLine(),
              DashedLine(),
              //TODO: make it straight
              DashedLine(),
              DashedLine(),
            ],
          ),
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
              widget.dataList.length,
              (index) => Text(
                    TimeConverter.getMonthWith3LettersFromDateTime(
                        widget.dataList[index].date),
                    //TODO: add style here
                  )),
        )
      ],
    );
  }
}
