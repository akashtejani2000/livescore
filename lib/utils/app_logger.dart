import 'dart:async';
import 'dart:developer' as developer;

class AppLogger {
  static void log(Object? message) {
    developer.log(message.toString(),
        name: "PrimePay", level: 0, zone: Zone.root, time: DateTime.now());
  }
}
