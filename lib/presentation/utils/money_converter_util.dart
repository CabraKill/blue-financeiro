//TODO: make test cases
class MoneyConverter {
  static String convertToSimpleMoney(double value) {
    return 'R\$${value.toStringAsFixed(0)}';
  }

  static String convertToMoneyWith2(double value) {
    return 'R\$${value.toStringAsFixed(2)}'.replaceAll('.', ',');
  }
}
