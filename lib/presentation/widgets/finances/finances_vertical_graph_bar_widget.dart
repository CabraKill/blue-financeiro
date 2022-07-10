import 'package:dox_financeiro/domain/entities/finances/finances_graph_data_entity.dart';
import 'package:dox_financeiro/presentation/widgets/theme/colors.dart';
import 'package:flutter/material.dart';

class FinancesVerticalGraphBar extends StatelessWidget {
  final FinancesGraphDataEntity data;
  final double maxVerticalResolution;
  const FinancesVerticalGraphBar({
    required this.data,
    required this.maxVerticalResolution,
    Key? key,
  }) : super(key: key);
  static const double _barWidth = 6.0;
  static const double _borderRadius = 10.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: FractionallySizedBox(
        heightFactor: data.sum / maxVerticalResolution,
        child: Column(
          children: [
            Expanded(
              flex: data.received.round(),
              child: Container(
                width: _barWidth,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(_borderRadius),
                    topRight: Radius.circular(_borderRadius),
                  ),
                  color: DoxColors.primary,
                ),
              ),
            ),
            Expanded(
              flex: data.toReceive.round(),
              child: Container(
                width: _barWidth,
                decoration: const BoxDecoration(
                  color: DoxColors.nonSelected,
                ),
              ),
            ),
            Expanded(
              flex: data.late.round(),
              child: Container(
                width: _barWidth,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(_borderRadius),
                    bottomRight: Radius.circular(_borderRadius),
                  ),
                  color: DoxColors.red,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
