import 'package:get/get.dart';
import '../controller/import_collection_controller.dart';

class WebViewBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => WebViewController());
  }
}
