import 'package:dox_financeiro/presentation/utils/time_converter_util.dart';
import 'package:test/test.dart';

void main() {
  test('getTimeFormattedFromDateTime should return right format', () {
    //mock
    DateTime dateTimeMock = DateTime(2022, 7, 12, 12, 5);

    //action
    String result = TimeConverter.getTimeFormattedFromDateTime(dateTimeMock);

    //assert
    expect(result, '12:05');
  });

  test('getDateFormattedFromDateTime should return right format', () {
    //mock
    DateTime dateMock = DateTime(2022, 7, 12);

    //action
    String result = TimeConverter.getDateFormattedFromDateTime(dateMock);

    //assert
    expect(result, '12/07/2022');
  });
}
