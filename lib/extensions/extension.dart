import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart' show DateFormat;

part 'date_time_extension.dart';

part 'data_type.dart';

part 'string_extension.dart';

extension $BuildContextExtension on BuildContext {
  hideKeyboard() {
    final currentFocus = FocusScope.of(this);
    if (!currentFocus.hasPrimaryFocus && currentFocus.hasFocus) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }
}

extension $GetxExtension on GetInterface {
  T deleteAndPut<T>(T dependency, {String? tag}) {
    GetInstance().delete<T>(tag: tag, force: true);
    return Get.put<T>(dependency, tag: tag);
  }
}
