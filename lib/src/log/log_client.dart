import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';

typedef LogHandler = void Function(LogRecord record);

/// A singleton client to configure and manage the root Logger.
class LoggerClient {
  LoggerClient._();

  static final LoggerClient instance = LoggerClient._();

  /// Call once at app startup to configure logging.
  ///
  /// [level] controls the minimum level to record.
  /// [handler] is invoked for each LogRecord.
  void init({Level level = Level.INFO, required LogHandler handler}) {
    Logger.root.level = level;
    Logger.root.onRecord.listen(handler);
  }

  /// Convenience to register a simple console logger.
  /// Only logs in debug mode if [debugOnly] is true.

  /// Usage :
  /// void main() {
  /// Initialize the global logger
  ///   LoggerClient.instance.init(
  ///     level: Level.ALL,
  ///     wrapWidth : 300,
  ///     handler: (record) {
  ///       // Only print in debug
  ///       if (kDebugMode) {
  ///         debugPrint(
  ///           '${record.time}: [${record.level.name}] '
  ///           '${record.loggerName}: ${record.message}',
  ///         );
  ///       }
  ///       // You could also send errors to Sentry, etc.:
  ///       if (record.level >= Level.SEVERE) {
  ///         // Sentry.captureException(record.error);
  ///       }
  ///     },
  ///   );

  ///   runApp(const MyApp());
  /// }

  void initConsole({
    Level level = Level.ALL,
    bool debugOnly = true,
    int? wrapWidth,
  }) {
    init(
      level: level,
      handler: (record) {
        if (debugOnly) {
          debugPrint(_format(record), wrapWidth: wrapWidth);
        } else {
          debugPrint(_format(record), wrapWidth: wrapWidth);
        }
      },
    );
  }

  String _format(LogRecord r) =>
      '${r.time}: [${r.level.name}] ${r.loggerName}: ${r.message}';
}
