import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_score/ui/dashbord/dash_bord_logic.dart';
import 'package:live_score/ui/events/event.dart';
import 'package:live_score/ui/homepage/homepage.dart';
import 'package:live_score/ui/more/more.dart';
import 'package:live_score/ui/news/news.dart';

class DashBord extends StatelessWidget {
  DashBord({Key? key}) : super(key: key);

  final DashBordLogic controller = Get.put(DashBordLogic());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: SafeArea(
          child: IndexedStack(
            index: controller.tabIndex.value,
            children: const [
              Homepage(),
              Event(),
              News(),
              More(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.black,
          selectedItemColor: Colors.redAccent,
          onTap: controller.changeTabIndex,
          currentIndex: controller.tabIndex.value,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          elevation: 0,
          items: [
            _bottomNavigationBarItem(
              icon: CupertinoIcons.home,
              label: 'Home',
            ),
            _bottomNavigationBarItem(
              icon: CupertinoIcons.sportscourt,
              label: 'News',
            ),
            _bottomNavigationBarItem(
              icon: CupertinoIcons.bell,
              label: 'Alerts',
            ),
            _bottomNavigationBarItem(
              icon: CupertinoIcons.person,
              label: 'Account',
            ),
          ],
        ),
      ),
    );
  }

  _bottomNavigationBarItem({required IconData icon, required String label}) {
    return BottomNavigationBarItem(
      icon: Icon(icon),
      label: label,
    );
  }
}
