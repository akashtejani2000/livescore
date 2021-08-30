import 'package:flutter/material.dart';
import 'package:live_score/res/colors.dart';
import 'package:live_score/res/images.dart';
import 'package:live_score/widgets/common_dialog.dart';

class CommonUtils {
  static showErrorDialog(String message, [VoidCallback? onButtonTap]) {
    CommonDialog.show(
      svgImage: AppImage.error,
      imageColor: AppColor.red,
      title: "S.of(Get.context!).oops",
      description: message.trim(),
      negativeButtonText: "S.of(Get.context!).okay",
    );
  }

  static showNoInternetDialog() {
    CommonDialog.show(
      svgImage: AppImage.error,
      imageColor: AppColor.red,
      title: "S.of(Get.context!).noInternet",
      description: " S.of(Get.context!).noInternetDesc",
      negativeButtonText: "S.of(Get.context!).okay",
    );
  }
}
