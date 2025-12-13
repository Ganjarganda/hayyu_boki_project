import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hayyu_boki_project/controllers/login/login_controller.dart';
import 'package:hayyu_boki_project/gen/assets.gen.dart';
import 'package:hayyu_boki_project/screens/base_responsive_screen.dart';
import 'package:hayyu_boki_project/utils/spacing/ResponsiveSpacing.dart';
import 'package:hayyu_boki_project/utils/text/text_utils.dart';
import 'package:hayyu_boki_project/widgets/textfield/primary_solid_textfield.dart';
import 'package:hugeicons/hugeicons.dart';

class LoginScreen extends BaseResponsiveScreen<LoginController> {
  LoginScreen({super.key});

  @override
  Widget? phone() {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          actions: [
            IconButton(
              onPressed: () {
                controller.toggleLanguage();
              },
              icon: HugeIcon(
                icon: HugeIcons.strokeRoundedLanguageCircle,
                color: Get.isDarkMode ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
        backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
        body: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Container(
            padding: EdgeInsets.symmetric(
              horizontal: screen.context.paddingBasic,
            ),
            child: AutofillGroup(
              child: Column(
                children: [
                  SizedBox(height: 50),

                  /// logo
                  Container(
                    padding: EdgeInsets.all(screen.context.paddingLogo),
                    child: Image.asset(
                      Assets.images.imgLogo.path,
                      color: Get.isDarkMode ? Colors.white : Colors.black,
                      width: screen.context.responsiveValue(
                        mobile: Get.width * 0.3,
                      ),
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    'Hayyu Boki',
                    style: TextStyle(
                      fontSize: screen.context.h2,
                      fontWeight: FontWeight.bold,
                      color: Get.isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),

                  Text(
                    'smart_financial_management'.tr,
                    style: TextStyle(
                      fontSize: screen.context.h3,
                      fontWeight: FontWeight.normal,
                      color: Get.isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),

                  /// email
                  PrimarySolidTextfield(
                    hintText: 'hint_email'.tr,
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
