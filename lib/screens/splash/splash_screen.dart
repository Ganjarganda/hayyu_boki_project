import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hayyu_boki_project/controllers/splash/splash_controller.dart';
import 'package:hayyu_boki_project/utils/spacing/ResponsiveSpacing.dart';
import 'package:hayyu_boki_project/utils/text/text_utils.dart';

import '../../gen/assets.gen.dart';
import '../../utils/package_info/package_info_util.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Get.isDarkMode ? Colors.black : Colors.white,
        body: Stack(
          children: [
            /// logo
            Center(
              child: Container(
                padding: EdgeInsets.all(context.paddingLogo),
                child: Image.asset(
                  Assets.images.imgLogo.path,
                  color: Get.isDarkMode ? Colors.white : Colors.black,
                  height: context.responsiveValue(
                    mobile: Get.width * 0.5,
                    tablet: Get.width * 0.5,
                    desktop: Get.height * 0.5,
                  ),
                  width: context.responsiveValue(
                    mobile: Get.width * 0.5,
                    tablet: Get.width * 0.5,
                    desktop: Get.height * 0.5,
                  ),
                ),
              ),
            ),

            /// app version
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.all(context.paddingTiny),
                child: Text(
                  PackageInfoUtil().getAppVersion(),
                  style: TextStyle(
                    fontSize: context.h3,
                    fontWeight: FontWeight.bold,
                    color: Get.isDarkMode ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
