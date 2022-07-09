class FinancesPaymentCardEntity {
  final String location;
  final String description;
  final DateTime startTime;
  final DateTime endTime;
  final DateTime date;
  final double amount;

  FinancesPaymentCardEntity({
    required this.location,
    required this.description,
    required this.startTime,
    required this.endTime,
    required this.date,
    required this.amount,
  });
}
