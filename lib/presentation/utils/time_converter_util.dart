class TimeConverter {
  TimeConverter._();
  static String getTimeFormattedFromDateTime(DateTime dateTime) {
    return '${dateTime.hour}:${dateTime.minute.toString().padLeft(2, '0')}';
  }

  static String getSimpleTimeFromDateTime(int dateTime) {
    return '${dateTime}H';
  }

  static String getDateFormattedFromDateTime(DateTime dateTime) {
    final day = dateTime.day.toString().padLeft(2, "0");
    final month = dateTime.month.toString().padLeft(2, "0");
    final year = dateTime.year;
    return '$day/$month/$year';
  }

  static String getMonthWith3LettersFromDateTime(DateTime dateTime) {
    final month = dateTime.month;
    return _monthWith3LettersList[month - 1];
  }

  static const _monthWith3LettersList = <String>[
    'Jan',
    'Fev',
    'Mar',
    'Abr',
    'Mai',
    'Jun',
    'Jul',
    'Ago',
    'Set',
    'Out',
    'Nov',
    'Dez',
  ];
}
