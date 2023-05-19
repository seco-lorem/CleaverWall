import 'package:logger/logger.dart';

/// Logging option for the developers.
class AppLogging {
  static Logger logger = Logger(
    filter: null, // Use the default LogFilter (-> only log in debug mode)
    printer: prettyPrinter, // Use the PrettyPrinter to format and print log
    output: null, // Use the default LogOutput (-> send everything to console)
  );

  /// Whether to log all response data or not.
  static const bool showResponseData = false;

  /// Pretty printer options.
  static PrettyPrinter prettyPrinter = PrettyPrinter(
    /// number of method calls to be displayed
    methodCount: 2,

    /// number of method calls if stacktrace is provided
    errorMethodCount: 8,

    /// width of the output
    lineLength: 160,

    /// Colorful log messages
    colors: false,

    /// Print an emoji for each log message
    printEmojis: true,

    /// Should each log print contain a timestamp
    printTime: false,
  );
}
