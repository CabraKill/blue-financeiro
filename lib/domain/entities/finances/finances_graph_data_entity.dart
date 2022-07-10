class FinancesGraphDataEntity {
  final double received;
  final double toReceive;
  final double late;
  
  FinancesGraphDataEntity({
    required this.received,
    required this.toReceive,
    required this.late,
  });

  double get sum => received + toReceive + late;
}
