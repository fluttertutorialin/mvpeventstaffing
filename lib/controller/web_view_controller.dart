import 'package:get/get.dart';
import '../entity/argument/web_view_argument.dart';

class WebViewController extends GetxController {
  String? title;

  @override
  void onInit() {
    super.onInit();

    WebViewArgument? webViewArgument = Get.arguments;
    title = webViewArgument!.title;
  }
}
