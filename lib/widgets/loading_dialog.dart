import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';
import 'package:live_score/res/colors.dart';

class LoadingDialog {
  static final instance = LoadingDialog._();

  LoadingDialog._();

  bool _isVisible = false;

  void show() {
    if (_isVisible) return;
    Get.dialog(
      WillPopScope(
        onWillPop: () => Future.value(false),
        child: Dialog(
          backgroundColor: AppColor.transparent,
          elevation: 0,
          insetPadding: EdgeInsets.zero,
          child: Center(
            child: SpinKitCircle(
              color: Get.theme.primaryColorDark,
              size: 84,
            ),
          ),
        ),
      ),
    );
    _isVisible = true;
  }

  void dismiss() {
    if (_isVisible) {
      Get.back();
      _isVisible = false;
    }
  }
}
