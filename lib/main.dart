import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_score/network/api_urls.dart';

import 'constants/route.dart';
import 'generated/l10n.dart';
import 'network/api_client.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await ApiClient.init(ApiUrl.baseUrl);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Live Score",
      initialRoute: AppRoute.homepage,
      getPages: AppRoute.listRoutes,
      localizationsDelegates: const [
        S.delegate,
        DefaultMaterialLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
      ],
      // home: JsonParseDemo(),
    );
  }
}

//argument pass

// Get.delete<String>(tag:"tagName");
//Get.put<String>("ABC",tag:"tagName");

//argument get

// var result=Get.find<String>(tag:"tagName");

/*import 'package:get/get.dart';

extension $GetxExtension on GetInterface {
  T deleteAndPut<T>(T dependency, {String? tag}) {
    GetInstance().delete<T>(tag: tag, force: true);
    return Get.put<T>(dependency, tag: tag);
  }
}

String enumToString(Object o) => o.toString().split('.').last;

T enumFromString<T>(String key, List<T> values) =>
    values.firstWhere((v) => key == enumToString(v!));*/
