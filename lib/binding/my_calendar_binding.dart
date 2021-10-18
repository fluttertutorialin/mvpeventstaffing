import 'package:get/get.dart';
import '../controller/import_collection_controller.dart';

class MyCalendarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyCalendarController());
  }
}
