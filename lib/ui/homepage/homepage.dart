import 'package:flutter/material.dart';
import 'package:live_score/generated/l10n.dart';
import 'package:live_score/res/colors.dart';
import 'package:live_score/widgets/widgets.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.transparent,
        elevation: 0.0,
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CommonText.regular(
              S.of(context).event,
              size: 16,
              color: AppColor.grey,
            ),
            CommonText.medium(
              S.of(context).sportLight,
              size: 20,
              color: AppColor.black,
            ),
          ],
        ),
      ),
      body: Column(
        children: [],
      ),
    );
  }
}
