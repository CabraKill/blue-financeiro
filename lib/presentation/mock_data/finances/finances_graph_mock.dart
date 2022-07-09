import 'package:dox_financeiro/domain/entities/finances/finances_graph_month_data_entity.dart';
import 'package:dox_financeiro/domain/entities/finances/finances_graph_entity.dart';

class FinancesGraphMockData {
  static final graphMockData = FinancesGraphEntity(
    title: "Balanço",
    data: [
      FinancesGraphMonthDataEntity(
        received: 6,
        toReceive: 4,
        late: 8,
        date: DateTime(2022, 1),
      ),
      FinancesGraphMonthDataEntity(
        received: 18,
        toReceive: 8,
        late: 15,
        date: DateTime(2022, 2),
      ),
      FinancesGraphMonthDataEntity(
        received: 21,
        toReceive: 10,
        late: 21,
        date: DateTime(2022, 3),
      ),
      FinancesGraphMonthDataEntity(
        received: 13,
        toReceive: 4,
        late: 13,
        date: DateTime(2022, 4),
      ),
      FinancesGraphMonthDataEntity(
        received: 6,
        toReceive: 2,
        late: 6,
        date: DateTime(2022, 5),
      ),
      FinancesGraphMonthDataEntity(
        received: 12,
        toReceive: 8,
        late: 12,
        date: DateTime(2022, 6),
      ),
    ],
  );
}
