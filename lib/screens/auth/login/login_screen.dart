import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hayyu_boki_project/controllers/login/login_controller.dart';
import 'package:hayyu_boki_project/utils/spacing/ResponsiveSpacing.dart';
import 'package:hayyu_boki_project/widgets/textfield/primary_solid_textfield.dart';

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: screen.context.paddingBasic,
            ),
            child: Form(
              key: controller.formKey,
              child: AutofillGroup(
                child: Column(
                  children: [
                    /// email
                    PrimarySolidTextfield(
                      hintText: 'your@email.com',
                      action: TextInputAction.done,
                      type: TextInputType.emailAddress,
                      controller: controller.emailController,
                      autoFill: const [AutofillHints.email],
                      backgroundColor: Colors.white,
                      withShadow: true,
                      onEditComplete: () {
                        Get.focusScope?.unfocus();
                      },
                      onChange: (value) {},
                    ),

                    /// password
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
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
