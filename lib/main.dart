import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'constants/route.dart';
import 'generated/l10n.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Live Score",
      initialRoute: AppRoute.demo1,
      getPages: AppRoute.listRoutes,
      localizationsDelegates: [
        S.delegate,
        DefaultMaterialLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
      ],
    );
  }
}

