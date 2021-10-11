import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../resource/app_value.dart';
import '../../controller/import_collection_controller.dart';
import '../../resource/app_color.dart';

class BottomNavigationPage extends GetView<BottomNavigationController> {
  const BottomNavigationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        body: PageView(
            physics: const NeverScrollableScrollPhysics(),
            children: [
              controller.redirectPage(),
              controller.redirectPage(),
              controller.redirectPage(),
              controller.redirectPage()
            ],
            controller: controller.pageController),
        bottomNavigationBar: _bottomNavigationBar()));
  }

  _bottomNavigationBar() => BottomNavigationBar(
          backgroundColor: boxColor,
          elevation: 10,
          fixedColor: primarySwatchColor,
          type: BottomNavigationBarType.fixed,
          onTap: controller.onTabChange,
          selectedLabelStyle: Get.textTheme.subtitle1!.merge(
              const TextStyle(fontWeight: FontWeight.w200, fontSize: 14)),
          unselectedLabelStyle: Get.textTheme.subtitle1!.merge(
              const TextStyle(fontSize: 14, fontWeight: FontWeight.w200)),
          currentIndex: controller.currentPageIndex.value,
          unselectedItemColor: whiteColor,
          items: [
            BottomNavigationBarItem(
                icon: _notification(iconData: Icons.home_outlined),
                label: homeBottomMenu),
            BottomNavigationBarItem(
                icon: _notification(iconData: Icons.event), label: eventsBottomMenu),
            BottomNavigationBarItem(
                icon: _notification(iconData: Icons.location_on_outlined),
                label: venuesBottomMenu),
            BottomNavigationBarItem(
                icon: _notification(iconData: Icons.account_circle_outlined),
                label: accountBottomMenu)
          ]);

  _notification({@required IconData? iconData}) => Stack(children: <Widget>[
        Container(
            width: 35,
            height: 30,
            padding: const EdgeInsets.only(right: 0.0, top: 4),
            child: Icon(iconData))
      ]);
}
