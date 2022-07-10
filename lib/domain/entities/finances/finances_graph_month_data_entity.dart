import 'package:dox_financeiro/domain/entities/finances/finances_graph_data_entity.dart';

class FinancesGraphMonthDataEntity {
  final DateTime date;
  final FinancesGraphDataEntity data;

  FinancesGraphMonthDataEntity({
    required this.data,
    required this.date,
  });
}
