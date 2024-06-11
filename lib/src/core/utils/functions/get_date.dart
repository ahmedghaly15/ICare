import 'package:intl/intl.dart';

/// Returns the current date formatted as a string in the format 'MMM d, yyyy'.
///
/// This method retrieves the current date and time using [DateTime.now()],
/// and then formats it using the [DateFormat.yMMMd()] formatter from the `intl` package.
///
/// Example usage:
/// ```dart
/// String currentDate = getDate();
/// ```
///
/// Returns a formatted date string.
String getDate() {
  DateTime dateTime = DateTime.now();
  String date = DateFormat.yMMMd().format(dateTime);
  return date;
}
