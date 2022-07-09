import 'package:dox_financeiro/domain/entities/finances/finances_graph_month_data_entity.dart';

class FinancesGraphEntity {
  final String title;
  final List<FinancesGraphMonthDataEntity> data;

  FinancesGraphEntity({
    required this.title,
    required this.data,
  });
}
