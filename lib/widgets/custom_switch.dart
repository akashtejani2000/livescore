import 'package:flutter/material.dart';
import 'package:live_score/res/colors.dart';

class CustomSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool> onChanged;
  final Color? thumbColor;
  final Color? trackColor;
  final Color? disabledThumbColor;
  final Color? disabledTrackColor;

  const CustomSwitch({
    required this.value,
    required this.onChanged,
    this.thumbColor = AppColor.white,
    this.trackColor,
    this.disabledThumbColor = AppColor.white,
    this.disabledTrackColor,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: BorderRadius.circular(20),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () => onChanged.call(!value),
        child: AnimatedContainer(
          padding: const EdgeInsets.all(2.0),
          duration: Duration(milliseconds: 300),
          height: 20,
          width: 36,
          alignment: value
              ? AlignmentDirectional.centerEnd
              : AlignmentDirectional.centerStart,
          child: AnimatedContainer(
            duration: Duration(milliseconds: 300),
            width: 16,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: value ? thumbColor : disabledThumbColor),
          ),
        ),
      ),
    );
  }
}

class TristateSwitch extends StatelessWidget {
  final int value;
  final ValueChanged<int> onChanged;
  final Color? thumbColor;
  final Color? trackColor;

  const TristateSwitch({
    required this.value,
    required this.onChanged,
    this.thumbColor = AppColor.white,
    this.trackColor,
  }) : assert(value >= 0 && value <= 2);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: trackColor ?? AppColor.transparent,
      borderRadius: BorderRadius.circular(20),
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () => onChanged.call((value + 1) % 3),
        child: AnimatedContainer(
          padding: const EdgeInsets.all(2.0),
          duration: Duration(milliseconds: 300),
          height: 20,
          width: 36,
          alignment: value == 0
              ? AlignmentDirectional.center
              : (value == 1
                  ? AlignmentDirectional.centerStart
                  : AlignmentDirectional.centerEnd),
          child: Container(
            width: 16,
            decoration:
                BoxDecoration(shape: BoxShape.circle, color: thumbColor),
          ),
        ),
      ),
    );
  }
}
