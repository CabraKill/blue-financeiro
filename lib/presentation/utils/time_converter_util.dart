//TODO: make test cases
class TimeConverter {
  static String getTimeFormattedFromDateTime(DateTime dateTime) {
    return '${dateTime.hour}:${dateTime.minute.toString().padLeft(2, '0')}';
  }

  static String getDateFormattedFromDateTime(DateTime dateTime) {
    final day = dateTime.day.toString().padLeft(2, "0");
    final month = dateTime.month.toString().padLeft(2, "0");
    final year = dateTime.year;
    return '$day/$month/$year';
  }
}
