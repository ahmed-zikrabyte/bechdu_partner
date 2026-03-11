String formatDateTime(DateTime dateTime) {
  // DateTime.parse() already converts UTC (Z-suffix) to local time — no manual offset needed
  dateTime = dateTime.toLocal();

  final day = dateTime.day.toString().padLeft(2, '0');
  final month = dateTime.month.toString().padLeft(2, '0');
  final year = dateTime.year.toString();
  final hours = dateTime.hour.toString().padLeft(2, '0');
  final minutes = dateTime.minute.toString().padLeft(2, '0');
  final seconds = dateTime.second.toString().padLeft(2, '0');

  // Format the date and time using string interpolation
  return '$day/$month/$year, $hours:$minutes:$seconds';
}

String dateMakerNotification(DateTime dateTime) {
  // Convert UTC time to IST (UTC+5:30)
  // dateTime = dateTime.add(const Duration(hours: 5, minutes: 30));

  final day = dateTime.day.toString().padLeft(2, '0');
  final month = dateTime.month.toString().padLeft(2, '0');
  final year = dateTime.year.toString();

  // Format the date and time using string interpolation
  return '$day-$month-$year';
}
