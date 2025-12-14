import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hayyu_boki_project/controllers/login/login_controller.dart';
import 'package:hayyu_boki_project/gen/assets.gen.dart';
import 'package:hayyu_boki_project/screens/base_responsive_screen.dart';
import 'package:hayyu_boki_project/utils/color/color.dart';
import 'package:hayyu_boki_project/utils/size/ResponsiveSize.dart';
import 'package:hayyu_boki_project/utils/text/text_utils.dart';
import 'package:hayyu_boki_project/widgets/button/primary_button.dart';
import 'package:hayyu_boki_project/widgets/textfield/primary_solid_pass_textfield.dart';
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
                  SizedBox(height: screen.context.spacingLarge),

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

                  SizedBox(height: screen.context.spacingSmall),

                  Text(
                    'Hayyu Boki',
                    style: GoogleFonts.poppins(
                      fontSize: screen.context.h2,
                      fontWeight: FontWeight.bold,
                      color: Get.isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),

                  Text(
                    'smart_financial_management'.tr,
                    style: GoogleFonts.poppins(
                      fontSize: screen.context.h3,
                      fontWeight: FontWeight.normal,
                      color: Get.isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),

                  SizedBox(height: screen.context.spacingMedium),

                  /// form
                  _Form(),
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

  Widget _Form() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// email
        Text(
          'Email',
          style: GoogleFonts.poppins(
            fontSize: screen.context.bodyText,
            fontWeight: FontWeight.normal,
            color: Get.isDarkMode ? Colors.white : Colors.black,
          ),
        ),

        SizedBox(height: screen.context.spacingSmallExtra),

        PrimarySolidTextfield(
          hintText: 'hint_email'.tr,
          action: TextInputAction.done,
          type: TextInputType.emailAddress,
          controller: controller.emailController,
          autoFill: const [AutofillHints.email],
          withShadow: true,
          onEditComplete: () {
            Get.focusScope?.unfocus();
          },
          onChange: (value) {},
        ),

        SizedBox(height: screen.context.spacingSmall),

        /// password
        Text(
          'password'.tr,
          style: GoogleFonts.poppins(
            fontSize: screen.context.bodyText,
            fontWeight: FontWeight.normal,
            color: Get.isDarkMode ? Colors.white : Colors.black,
          ),
        ),

        SizedBox(height: screen.context.spacingSmallExtra),

        Obx(
          () => PrimarySolidPassTextfield(
            hintText: 'hint_password'.tr,
            action: TextInputAction.done,
            type: TextInputType.visiblePassword,
            secureText: controller.hidePassword.value,
            controller: controller.passwordController,
            autoFill: const [AutofillHints.password],
            showSuffixIcon: true,
            withShadow: true,
            suffixIcon: IconButton(
              onPressed: () {
                controller.hidePassword.value = !controller.hidePassword.value;
              },
              icon: HugeIcon(
                icon:
                    controller.hidePassword.value
                        ? HugeIcons.strokeRoundedViewOff
                        : HugeIcons.strokeRoundedView,
                color: Colors.black,
              ),
              splashColor: Colors.transparent,
              highlightColor: Colors.transparent,
            ),
            onEditComplete: () {
              Get.focusScope?.unfocus();
            },
            onChange: (value) {},
          ),
        ),

        SizedBox(height: screen.context.spacingLarge),

        PrimaryButton(
          color: primaryColor,
          title: 'sign_in'.tr,
          textColor: Colors.white,
          useBold: false,
          onClick: () {},
        ),

        SizedBox(height: screen.context.spacingMedium),

        GestureDetector(
          onTap: () {},
          child: Center(
            child: RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '${'dont_have_account'.tr} ',
                    style: GoogleFonts.poppins(
                      fontSize: screen.context.bodyText,
                      fontWeight: FontWeight.normal,
                      color: Get.isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                  TextSpan(
                    text: 'register'.tr,
                    style: GoogleFonts.poppins(
                      fontSize: screen.context.bodyText,
                      fontWeight: FontWeight.bold,
                      color: Get.isDarkMode ? Colors.white : Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),

        SizedBox(height: screen.context.spacingMedium),

        Row(
          children: [
            Expanded(
              child: Divider(
                color: Get.isDarkMode ? Colors.white : Colors.grey,
                endIndent: 10,
                radius: BorderRadius.circular(100),
              ),
            ),
            Text(
              'or'.tr,
              style: GoogleFonts.poppins(
                fontSize: screen.context.bodyText,
                fontWeight: FontWeight.normal,
                color: Get.isDarkMode ? Colors.white : Colors.grey,
              ),
            ),
            Expanded(
              child: Divider(
                color: Get.isDarkMode ? Colors.white : Colors.grey,
                indent: 10,
                radius: BorderRadius.circular(100),
              ),
            ),
          ],
        ),

        SizedBox(height: screen.context.spacingMedium),

        Center(
          child: GestureDetector(
            onTap: () {},
            child: Image.asset(
              Assets.images.imgGoogle.path,
              width: screen.context.responsiveValue(
                mobile: screen.context.sizeLogoMedium,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
