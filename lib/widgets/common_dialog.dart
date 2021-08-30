import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_score/res/colors.dart';

import 'widgets.dart';

class CommonDialog extends StatelessWidget {
  final String title, description, positiveButtonText, negativeButtonText;
  final bool dismissible;
  final VoidCallback? positiveButtonTap, negativeButtonTap;
  final String image, svgImage;
  final Color? imageColor;

  static Future<T?> show<T>({
    required String title,
    required String description,
    String positiveButtonText = "",
    String negativeButtonText = "",
    bool dismissible = false,
    VoidCallback? positiveButtonTap,
    VoidCallback? negativeButtonTap,
    String image = "",
    String svgImage = "",
    Color? imageColor,
  }) {
    return Get.dialog<T>(
      CommonDialog(
        title: title,
        description: description,
        positiveButtonText: positiveButtonText,
        negativeButtonText: negativeButtonText,
        positiveButtonTap: positiveButtonTap,
        negativeButtonTap: negativeButtonTap,
        dismissible: dismissible,
        image: image,
        svgImage: svgImage,
        imageColor: imageColor,
      ),
    );
  }

  CommonDialog(
      {required this.title,
      required this.description,
      this.positiveButtonText = "",
      this.negativeButtonText = "",
      this.positiveButtonTap,
      this.negativeButtonTap,
      this.dismissible = false,
      this.image = "",
      this.svgImage = "",
      this.imageColor});

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () => Future.value(dismissible),
      child: Dialog(
        elevation: 0.0,
        insetPadding: EdgeInsets.symmetric(horizontal: 32, vertical: 16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        clipBehavior: Clip.hardEdge,
        backgroundColor: AppColor.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Flexible(
              child: Container(
                padding: EdgeInsets.fromLTRB(24, 16, 24, 8),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    if (image.isNotEmpty)
                      SquareImageFromAsset(image, size: 32, color: imageColor),
                    if (svgImage.isNotEmpty)
                      SquareSvgImageFromAsset(svgImage,
                          size: 32, color: imageColor),
                    if (image.isNotEmpty || svgImage.isNotEmpty) SizeBoxH(16),
                    CommonText.bold(title,
                        size: 16, color: AppColor.textPrimary),
                    SizeBoxH(8),
                    Flexible(
                      child: CommonText.regular(
                        description,
                        size: 14,
                        color: AppColor.textPrimary,
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  if (negativeButtonText.isNotEmpty) ...[
                    Flexible(
                      child: TextButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24))),
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered))
                              return AppColor.red.withOpacity(0.05);
                            else if (states.contains(MaterialState.focused) ||
                                states.contains(MaterialState.pressed))
                              return AppColor.red.withOpacity(0.1);
                            else
                              return AppColor.transparent;
                          }),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8)),
                        ),
                        onPressed: negativeButtonTap ??
                            () => Navigator.pop(context, false),
                        child: CommonText.semiBold(negativeButtonText,
                            size: 14, color: AppColor.red),
                      ),
                    ),
                  ],
                  if (positiveButtonText.isNotEmpty &&
                      negativeButtonText.isNotEmpty)
                    SizeBoxV(8),
                  if (positiveButtonText.isNotEmpty) ...[
                    Flexible(
                      child: TextButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(24))),
                          overlayColor:
                              MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                            if (states.contains(MaterialState.hovered))
                              return AppColor.green.withOpacity(0.05);
                            else if (states.contains(MaterialState.focused) ||
                                states.contains(MaterialState.pressed))
                              return AppColor.green.withOpacity(0.1);
                            else
                              return AppColor.transparent;
                          }),
                          padding: MaterialStateProperty.all(
                              EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8)),
                        ),
                        onPressed: positiveButtonTap ??
                            () => Navigator.pop(context, true),
                        child: CommonText.semiBold(positiveButtonText,
                            size: 14, color: AppColor.green),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
