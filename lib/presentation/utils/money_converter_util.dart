class MoneyConverterUtil {
  //TODO: make test case
  static String convertToSimpleMoney(double value) {
    return 'R\$${value.toStringAsFixed(0)}';
  }
}
