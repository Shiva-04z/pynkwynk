import 'package:get/get.dart';

class HomePageController extends GetxController {
  RxString myName = "".obs;
  RxBool isChanged = false.obs;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    myName.value = "Raj";
  }

  void changeName() {
    if (isChanged.value) {
      myName.value = "Shivalik";
    } else {
      myName.value = "Kanika";
    }
    isChanged.toggle();
  }
}
