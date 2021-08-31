import 'package:get/get.dart';
import 'package:live_score/ui/dashbord/dash_bord_logic.dart';
import 'package:live_score/ui/events/event_logic.dart';
import 'package:live_score/ui/more/more_logic.dart';
import 'package:live_score/ui/news/news_logic.dart';

class DashboardBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashBordLogic>(() => DashBordLogic());
    Get.lazyPut<EventLogic>(() => EventLogic());
    Get.lazyPut<NewsLogic>(() => NewsLogic());
    Get.lazyPut<MoreLogic>(() => MoreLogic());
  }
}
