import 'dart:async';

import 'package:get/get.dart';
import 'package:live_score/constants/route.dart';

class SplashLogic extends GetxController {
  late Timer timer;

  @override
  void onInit() {
    timer = Timer(const Duration(milliseconds: 2000),
        () => Get.toNamed(AppRoute.dashBord));
    super.onInit();
  }
}
