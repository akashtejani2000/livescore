import 'package:get/get.dart';
import 'package:live_score/ui/dashbord/dash_bord.dart';
import 'package:live_score/ui/splash/splash.dart';

class AppRoute {
  AppRoute._();

  static const splashScreen = "/";
  static const dashBord = "/dashBord";

  static List<GetPage> get listRoutes => [
        GetPage(name: splashScreen, page: () => SplashScreen()),
        GetPage(name: dashBord, page: () => DashBord()),
      ];
}
