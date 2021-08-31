import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_score/generated/l10n.dart';
import 'package:live_score/res/colors.dart';
import 'package:live_score/ui/splash/splash_logic.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final SplashLogic splashLogic = Get.put(SplashLogic());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.orange,
      body: Center(
          child: AnimatedTextKit(
        animatedTexts: [
          TypewriterAnimatedText(
            S.of(context).appName,
            textStyle: const TextStyle(
              fontSize: 32.0,
              fontWeight: FontWeight.bold,
            ),
            speed: const Duration(milliseconds: 2000),
          ),
        ],
        totalRepeatCount: 4,
        pause: const Duration(milliseconds: 1000),
        displayFullTextOnTap: true,
        stopPauseOnTap: true,
      )),
    );
  }
}
