import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hayyu_boki_project/controllers/login/login_controller.dart';

class LoginScreen extends GetResponsiveView<LoginController> {
  LoginScreen({super.key});

  ResponsiveScreenSettings get settings => const ResponsiveScreenSettings(
    // Desktop mulai dari 900px ke atas
    desktopChangePoint: 900,
    // Tablet antara 600px hingga 899px
    tabletChangePoint: 600,
  );

  @override
  Widget? phone() {
    return Scaffold(body: Center(child: Text('phone')));
  }

  @override
  Widget? tablet() {
    return Scaffold(body: Center(child: Text('tablet')));
  }

  @override
  Widget? desktop() {
    return Scaffold(body: Center(child: Text('desktop')));
  }

}
