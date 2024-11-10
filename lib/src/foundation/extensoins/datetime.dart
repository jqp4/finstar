extension DateTimeX on DateTime {
  DateTime addMonths(int n) => DateTime(year, month + n, day);
}
