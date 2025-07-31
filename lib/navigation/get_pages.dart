import 'package:get/get.dart';
import 'package:pynkwynk/features/home_page/home_page_bindings.dart';
import 'package:pynkwynk/features/home_page/home_page_view.dart';
import 'package:pynkwynk/navigation/routes_constant.dart';

List<GetPage> getPages = [
   GetPage(name: RoutesConstant.homePage, page: ()=>HomePageView(),binding: HomePageBindings(),)
];
