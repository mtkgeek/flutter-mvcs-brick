import 'package:{{name}}/bindings/base_binding.dart';
import 'package:get/get.dart';
import 'package:{{name}}/views/views.dart';

class AppRoutes {
  AppRoutes._(); //this is to prevent anyone from instantiating this object
  static final routes = [
    GetPage(name: '/', page: () => SplashScreen()),
    GetPage(name: '/base', page: () => BaseScreen(), binding: BaseBinding()),
  ];
}
