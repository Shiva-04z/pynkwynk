import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pynkwynk/features/home_page/home_page_bindings.dart';
import 'package:pynkwynk/navigation/get_pages.dart';
import 'package:pynkwynk/navigation/routes_constant.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'MY APP',
      theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
     initialRoute:RoutesConstant.homePage ,
     initialBinding: HomePageBindings(),
     getPages: getPages,
    );
  }
}
