import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:live_score/res/colors.dart';
import 'package:live_score/res/images.dart';
import 'package:live_score/widgets/clickable_container.dart';
import 'package:lottie/lottie.dart';

part 'src/button.dart';

part 'src/drop_down.dart';

part 'src/image.dart';

part 'src/text.dart';

part 'src/text_field.dart';

class SizeBoxV extends StatelessWidget {
  final double size;

  const SizeBoxV([this.size = 4]);

  @override
  Widget build(BuildContext context) => SizedBox(width: size);
}

class SizeBoxH extends StatelessWidget {
  final double size;

  const SizeBoxH([this.size = 4]);

  @override
  Widget build(BuildContext context) => SizedBox(height: size);
}

class LeadingBackIcon extends StatelessWidget {
  final Color color;
  final VoidCallback? onTap;

  const LeadingBackIcon({this.color = AppColor.black, this.onTap});

  @override
  Widget build(BuildContext context) => Material(
        type: MaterialType.circle,
        color: AppColor.transparent,
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: onTap ?? Navigator.of(context).pop,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SquareSvgImageFromAsset(AppImage.backIcon,
                color: color, fit: BoxFit.contain),
          ),
        ),
      );
}

class AppBarIcon extends StatelessWidget {
  final String image;
  final Color? color;
  final VoidCallback onTap;

  const AppBarIcon(this.image, {required this.onTap, this.color});

  @override
  Widget build(BuildContext context) => Material(
        type: MaterialType.circle,
        color: AppColor.transparent,
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: onTap,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: SquareSvgImageFromAsset(image,
                color: color, fit: BoxFit.contain),
          ),
        ),
      );
}

class CircleLoader extends StatelessWidget {
  final double size;

  const CircleLoader({this.size = 200});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      "assets/loader_lottie.json",
      repeat: true,
      width: size,
      height: size,
    );
  }
}
