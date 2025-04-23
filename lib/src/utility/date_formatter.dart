import 'package:intl/intl.dart';

/// Formats a date range like: `Apr 20 – Apr 24, 2024`.
///
/// Example:
/// ```dart
/// formatDateRange(DateTime(2024, 4, 20), DateTime(2024, 4, 24));
/// // → Apr 20 – Apr 24, 2024
/// ```
///

/// If localization becomes a requirement, this can be modified to accept
/// the locale from the main application like:
///
/// ```dart
/// DateFormat('MMM d', locale).format(date);
/// ```
///
/// For now, the locale is intentionally fixed to English for consistency.
String formatDateRange(DateTime start, DateTime end) {
  final from = DateFormat('MMM d', 'en').format(start);
  final to = DateFormat('MMM d, y', 'en').format(end);
  return '$from – $to';
}
