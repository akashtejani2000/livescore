part of 'extension.dart';

extension $StringExtension on String {
  DateTime parseUtcDateTime([String format = "yyyy-MM-dd HH:mm:ss"]) {
    var time = DateFormat(format)
        .parseUTC(this.replaceAll("T", " ").replaceAll("Z", " "));
    return time;
  }

  DateTime parseLocalDateTime([String format = "yyyy-MM-dd HH:mm:ss"]) {
    var time = DateFormat(format)
        .parse(this.replaceAll("T", " ").replaceAll("Z", " "));
    return time;
  }

  int toInt() {
    return int.tryParse(this) ?? 0;
  }

  double toDouble() {
    return double.tryParse(this) ?? 0.0;
  }

  String toFormattedPrice() {
    int number = int.parse(this);
    if (number > -1000 && number < 1000) return number.toString();
    final String digits = number.abs().toString();
    final StringBuffer result = StringBuffer(number < 0 ? '-' : '');
    final int maxDigitIndex = digits.length - 1;
    for (int i = 0; i <= maxDigitIndex; i += 1) {
      result.write(digits[i]);
      if (i < maxDigitIndex && (maxDigitIndex - i) % 3 == 0) result.write(',');
    }
    return result.toString();
  }
}

extension $NullableStringExtension on String? {
  bool get isNullOrEmpty => this == null || this!.isEmpty;
}
