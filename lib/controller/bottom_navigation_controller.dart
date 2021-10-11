import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../ui/page/import_collection_page.dart';

class BottomNavigationController extends GetxController {
  late PageController pageController;

  var currentPageIndex = Rx<int>(0);

  @override
  onInit() {
    super.onInit();
    pageController = PageController(initialPage: currentPageIndex.value);
  }

  _tabPages(int index) {
    switch (index) {
      case 0:
        return const HomePage();

      case 1:
        return const EventPage();

      case 2:
        return const VenuesPage();

      case 3:
        return const AccountPage();
    }
  }

  onTabChange(int index) {
    currentPageIndex.value = index;
  }

  redirectPage() {
    return _tabPages(currentPageIndex.value);
  }
}
