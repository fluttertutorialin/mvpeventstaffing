import 'package:get/get.dart';
import '../controller/import_collection_controller.dart';

class ProfileEditBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileEditController());
  }
}
