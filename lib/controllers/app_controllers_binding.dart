import 'package:get/get.dart';
import 'package:hayyu_boki_project/controllers/login/login_controller.dart';
import 'package:hayyu_boki_project/controllers/splash/splash_controller.dart';

class AppControllerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(SplashController());
    Get.put(LoginController());
  }
}
