import 'package:get/get.dart';
import 'package:pynkwynk/features/home_page/home_page_controller.dart';

class HomePageBindings extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomePageController());
  }
}
