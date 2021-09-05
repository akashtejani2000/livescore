import 'package:get/get.dart';
import 'package:live_score/ui/dashbord/dash_bord.dart';
import 'package:live_score/ui/demo.dart';
import 'package:live_score/ui/demo1.dart';
import 'package:live_score/ui/demo2.dart';
import 'package:live_score/ui/homepage/homepage.dart';
import 'package:live_score/ui/splash/splash.dart';

class AppRoute {
  AppRoute._();

  static const splashScreen = "/";
  static const dashBord = "/dashBord";
  static const homepage = "/homepage";
  static const demo = "/demo";
  static const demo1 = "/demo1";
  static const demo2 = "/demo2";

  static List<GetPage> get listRoutes => [
        GetPage(name: splashScreen, page: () => SplashScreen()),
        GetPage(name: dashBord, page: () => DashBord()),
        GetPage(name: homepage, page: () => Homepage()),
        GetPage(name: demo, page: () => UserList()),
        GetPage(name: demo1, page: () => Demo1()),
        GetPage(name: demo2, page: () => Demo2()),
      ];
}
