import 'package:dox_financeiro/presentation/utils/money_converter_util.dart';
import 'package:test/test.dart';

void main() {
  test('convertToSimpleMoney should return right format', () {
    //mock
    double moneyMock = 123.55;

    //action
    String result = MoneyConverter.convertToSimpleMoney(moneyMock);

    //assert
    expect(result, 'R\$124');
  });

  test('convertToMoneyWith2 should return value with 2 digits after dot', () {
    //mock
    double moneyMock = 123.5564;

    //action
    String result = MoneyConverter.convertToMoneyWith2(moneyMock);

    //assert
    expect(result, 'R\$123,56');
  });
}
