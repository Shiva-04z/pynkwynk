import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:pynkwynk/features/home_page/home_page_controller.dart';

class HomePageView extends GetView<HomePageController> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(appBar: _buildAppBar(), body: _buildBody());
  }

  Widget _buildBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [_buildMyCard(), _buildMyButton()],
    );
  }

  Widget _buildMyButton() {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          controller.changeName();
          Get.snackbar(
            "Success",
            "Congratulations",
            backgroundColor: Colors.greenAccent,
          );
        },
        child: Text("Change"),
      ),
    );
  }

  Widget _buildMyCard() {
    return Center(
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(8),

          child: Obx(
            () =>
                Container(child: Text("My Name is ${controller.myName.value}")),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return AppBar(backgroundColor: Colors.amberAccent);
  }
}
