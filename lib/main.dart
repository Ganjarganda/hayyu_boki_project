import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hayyu_boki_project/services/storage/box_storage.dart';
import 'package:hayyu_boki_project/utils/language/app_translations.dart';
import 'package:hayyu_boki_project/utils/package_info/package_info_util.dart';

import 'controllers/app_controllers_binding.dart';
import 'routes/app_routes.dart';

Future<void> main() async {
  // WAJIB: Pastikan inisialisasi Flutter sudah selesai
  WidgetsFlutterBinding.ensureInitialized();

  // Inisialisasi Get Storage
  await GetStorage.init(BoxStorage.boxStorage);

  // package info
  try {
    await PackageInfoUtil().initPackageInfo();
    debugPrint(
      'package info initialization successfully : ${PackageInfoUtil().getAppVersion()} - ${PackageInfoUtil().getpackageName()}',
    );
  } catch (e) {
    debugPrint('package info initialization failed : $e');
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Tester',
      debugShowCheckedModeBanner: false,

      // 1. Setup Bahasa
      translations: AppTranslations(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('id', 'ID'),

      // 2. Setup Tema (Light & Dark)
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      themeMode: ThemeMode.system,

      builder: (context, child) {
        return MediaQuery(
          data: MediaQuery.of(
            context,
          ).copyWith(textScaler: TextScaler.linear(1.0)),
          child: ScrollConfiguration(behavior: MyBehavior(), child: child!),
        );
      },
      initialBinding: AppControllerBinding(),
      initialRoute: AppRoutes.routeSplash,
      getPages: appRoutes(),
      defaultTransition: Transition.fade,
    );
  }
}

class MyBehavior extends ScrollBehavior {
  Widget buildViewportChrome(
    BuildContext context,
    Widget child,
    AxisDirection axisDirection,
  ) {
    return child;
  }
}
