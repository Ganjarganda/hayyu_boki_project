import 'package:get/get.dart';
import 'package:hayyu_boki_project/screens/auth/login/login_screen.dart';

import '../screens/splash/splash_screen.dart';

class AppRoutes {
  static String routeSplash = '/';

  static String routeLogin = '/login';
}

appRoutes() => [
  GetPage(
    name: AppRoutes.routeSplash,
    page: () => SplashScreen(),
    transition: Transition.fade,
  ),
  GetPage(
    name: AppRoutes.routeLogin,
    page: () => LoginScreen(),
    transition: Transition.fade,
  ),
];
