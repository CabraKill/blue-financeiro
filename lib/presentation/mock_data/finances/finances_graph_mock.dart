import 'package:dox_financeiro/domain/entities/finances/finances_graph_data_entity.dart';
import 'package:dox_financeiro/domain/entities/finances/finances_graph_month_data_entity.dart';
import 'package:dox_financeiro/domain/entities/finances/finances_graph_entity.dart';

class FinancesGraphMockData {
  static const graphMockDataWeight = 933.46;
  static final graphMockData = FinancesGraphEntity(
    title: "Balanço",
    data: [
      FinancesGraphMonthDataEntity(
        data: FinancesGraphDataEntity(
          received: 6,
          toReceive: 4,
          late: 8,
        ),
        date: DateTime(2022, 1),
      ),
      FinancesGraphMonthDataEntity(
        data: FinancesGraphDataEntity(
          received: 18,
          toReceive: 8,
          late: 15,
        ),
        date: DateTime(2022, 2),
      ),
      FinancesGraphMonthDataEntity(
        data: FinancesGraphDataEntity(
          received: 21,
          toReceive: 10,
          late: 21,
        ),
        date: DateTime(2022, 3),
      ),
      FinancesGraphMonthDataEntity(
        data: FinancesGraphDataEntity(
          received: 13,
          toReceive: 4,
          late: 13,
        ),
        date: DateTime(2022, 4),
      ),
      FinancesGraphMonthDataEntity(
        data: FinancesGraphDataEntity(
          received: 6,
          toReceive: 2,
          late: 6,
        ),
        date: DateTime(2022, 5),
      ),
      FinancesGraphMonthDataEntity(
        data: FinancesGraphDataEntity(
          received: 12,
          toReceive: 8,
          late: 12,
        ),
        date: DateTime(2022, 6),
      ),
    ]
        .map((data) => FinancesGraphMonthDataEntity(
              data: FinancesGraphDataEntity(
                received: data.data.received * graphMockDataWeight,
                toReceive: data.data.toReceive * graphMockDataWeight,
                late: data.data.late * graphMockDataWeight,
              ),
              date: data.date,
            ))
        .toList(),
  );
}
