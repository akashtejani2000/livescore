import 'dart:ui';

import 'package:flutter/material.dart';

class AppColor {
  AppColor._();

  static const white = Color(0xFFFFFFFF);
  static const black = Color(0xFF000000);
  static const transparent = Color(0x00000000);

  static const primaryJapan = Color(0xFF222F61);
  static const primaryCanada = Color(0xFF48F9FE);
  static const primaryCanadaDark = Color(0xFF43E8FB);
  static const primaryJapanMedium = Color(0xFF253B80);
  static const primaryJapanLight = Color(0xFF233793);

  static const primaryJapanGradient = const LinearGradient(
    colors: [primaryJapan, primaryJapanMedium, primaryJapanLight],
    begin: AlignmentDirectional.centerStart,
    end: AlignmentDirectional.centerEnd,
  );

  static const darkBlueCrossGradient = const LinearGradient(
    colors: [Color(0xFF222F61), Color(0xFF233793)],
    begin: AlignmentDirectional.bottomStart,
    end: AlignmentDirectional.topEnd,
  );

  static const skyBlueCrossGradient = const LinearGradient(
    colors: [Color(0xFF179BD7), Color(0xFF233793)],
    begin: AlignmentDirectional.bottomStart,
    end: AlignmentDirectional.topEnd,
  );

  static const textPrimary = Color(0xFF000000);
  static const textPrimaryLight = Color(0xFF7F88A2);
  static const textHighLight = Color(0xFF179BD7);

  static const skyBlueLight = Color(0xFF318FDD);
  static const skyBlueDark = Color(0xFF1969C8);
  static const blueLight = Color(0xFF91B5FF);

  static const grey = Color(0xFF58595B);
  static const red = Color(0xFFFF4D4D);
  static const orange = Color(0xFFEA9640);
  static const green = Color(0xFF1BA27A);
  static const greenLight = Color(0xFF0DB02B);

  static const greyLight = Color(0xFFEEF2FB);
  static const greyBg = Color(0xFFF3F3F8);
  static const textField = Color(0xFFEEEEEE);

  static const orangeGradient = const LinearGradient(
    colors: [Color(0xFFFCA95D), Color(0xFFF97370)],
    begin: AlignmentDirectional.topCenter,
    end: AlignmentDirectional.bottomCenter,
  );

  static const yellowGradient = const LinearGradient(
    colors: [Color(0xFFFAD961), Color(0xFFF76B1C)],
    begin: AlignmentDirectional.topCenter,
    end: AlignmentDirectional.bottomCenter,
  );

  static const greenGradient = const LinearGradient(
    colors: [Color(0xFFC0FF8B), Color(0xFF4DD750)],
    begin: AlignmentDirectional.topCenter,
    end: AlignmentDirectional.bottomCenter,
  );

  static const skyGradient = const LinearGradient(
    colors: [Color(0xFF53FDC3), Color(0xFF51CEEC)],
    begin: AlignmentDirectional.topCenter,
    end: AlignmentDirectional.bottomCenter,
  );

  static const purpleGradient = const LinearGradient(
    colors: [Color(0xFF9252C4), Color(0xFF6944AE)],
    begin: AlignmentDirectional.topCenter,
    end: AlignmentDirectional.bottomCenter,
  );

  static const skyBlueGradient = const LinearGradient(
    colors: [Color(0xFF29B5C2), Color(0xFF4075DB)],
    begin: AlignmentDirectional.topCenter,
    end: AlignmentDirectional.bottomCenter,
  );

  static const greyLightGradient = const LinearGradient(
    colors: [Color(0xFFF6F9FF), Color(0xFFFFFFFF)],
    begin: AlignmentDirectional.centerStart,
    end: AlignmentDirectional.centerEnd,
  );

  static const primaryCanadaCrossGradient = const LinearGradient(
    colors: [Color(0xFF03FCFF), Color(0xFF80CBEE)],
    begin: AlignmentDirectional.topStart,
    end: AlignmentDirectional.bottomEnd,
  );
}
