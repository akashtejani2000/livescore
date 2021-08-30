import 'package:flutter/material.dart';
import 'package:live_score/res/colors.dart';

class PageIndicator extends StatelessWidget {
  final int length;
  final int selectedIndex;
  final Color color;
  final double selectedWidth;
  final double width;

  const PageIndicator(
    this.length,
    this.selectedIndex, {
    this.color = AppColor.black,
    this.selectedWidth = 32,
    this.width = 12,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        for (int i = 0; i < length; i++)
          AnimatedContainer(
            duration: Duration(milliseconds: 300),
            margin: EdgeInsets.symmetric(horizontal: 4),
            width: i == selectedIndex ? selectedWidth : width,
            height: 4,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              color: color.withOpacity(i == selectedIndex ? 1.0 : 0.5),
            ),
          ),
      ],
    );
  }
}
