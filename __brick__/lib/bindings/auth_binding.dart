import 'package:{{name}}/controllers/controllers.dart';
import 'package:get/get.dart';
import 'package:{{name}}/services/auth_service.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.put<AuthService>(AuthService());
    Get.put<AuthController>(AuthController());
  }
}
