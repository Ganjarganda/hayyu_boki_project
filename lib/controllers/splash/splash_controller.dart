import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hayyu_boki_project/routes/app_routes.dart';

class SplashController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _startNavigationDelay();
    });
  }

  void _startNavigationDelay() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.offAllNamed(AppRoutes.routeLogin);
    });
  }

}
