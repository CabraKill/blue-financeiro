import 'package:dox_financeiro/domain/entities/finances/finances_graph_month_data_entity.dart';
import 'package:dox_financeiro/presentation/utils/time_converter_util.dart';
import 'package:dox_financeiro/presentation/widgets/finances/continuos_line_widget.dart';
import 'package:dox_financeiro/presentation/widgets/finances/dashed_line_widget.dart';
import 'package:dox_financeiro/presentation/widgets/finances/finances_vertical_graph_bar_widget.dart';
import 'package:dox_financeiro/presentation/widgets/theme/dox_colors.dart';
import 'package:dox_financeiro/presentation/widgets/theme/typograph.dart';
import 'package:flutter/material.dart';

class FinancesGraphWidget extends StatefulWidget {
  final List<FinancesGraphMonthDataEntity> dataList;
  final int currentMonthIndex;
  const FinancesGraphWidget({
    required this.dataList,
    required this.currentMonthIndex,
    Key? key,
  }) : super(key: key);

  @override
  State<FinancesGraphWidget> createState() => _FinancesGraphWidgetState();
}

class _FinancesGraphWidgetState extends State<FinancesGraphWidget> {
  late final _maxVerticalResolution = ((List.from(widget.dataList)
            ..sort((a, b) => a.data.sum.compareTo(b.data.sum)))
          .last as FinancesGraphMonthDataEntity)
      .data
      .sum;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AspectRatio(
          aspectRatio: 295 / 127,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              DashedLine(),
              DashedLine(),
              DashedLine(),
              //TODO: check with designer if it should be a dashed line or a continuous line
              ContinuosLine(),
              DashedLine(),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: List.generate(
            widget.dataList.length,
            (index) => Column(
              children: [
                Expanded(
                  child: FinancesVerticalGraphBar(
                    data: widget.dataList[index].data,
                    maxVerticalResolution: _maxVerticalResolution,
                  ),
                ),
                const SizedBox(height: 16),
                Text(
                  TimeConverter.getMonthWith3LettersFromDateTime(
                      widget.dataList[index].date),
                  style: DoxTypograph.caption1.copyWith(
                    color: widget.currentMonthIndex == index
                        ? DoxColors.primary
                        : DoxColors.monthsLegendColor,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
