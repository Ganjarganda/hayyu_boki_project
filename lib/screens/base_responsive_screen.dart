import 'package:get/get.dart';

// Class ini menjadi standar baru untuk aplikasi Anda
// Settingan Global
abstract class BaseResponsiveScreen<T> extends GetResponsiveView<T> {
  BaseResponsiveScreen({super.key});

  ResponsiveScreenSettings get settings => const ResponsiveScreenSettings(
    desktopChangePoint: 900,
    tabletChangePoint: 600,
  );
}