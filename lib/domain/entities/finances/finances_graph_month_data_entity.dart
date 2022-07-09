class FinancesGraphMonthDataEntity {
  final DateTime date;
  final double received;
  final double toReceive;
  final double late;

  FinancesGraphMonthDataEntity({
    required this.date,
    required this.received,
    required this.toReceive,
    required this.late,
  });
}
