import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

extension ResponsiveSize on BuildContext {
  // ==========================================================
  // SPACING / PADDING (Horizontal & Vertical)
  // ==========================================================

  double get paddingLogo =>
      responsiveValue(mobile: 6.0, tablet: 18.0, desktop: 24.0);

  double get paddingBasic =>
      responsiveValue(mobile: 16.0, tablet: 24.0, desktop: 32.0);

  double get paddingMedium =>
      responsiveValue(mobile: 12.0, tablet: 16.0, desktop: 20.0);

  double get paddingSmall =>
      responsiveValue(mobile: 8.0, tablet: 12.0, desktop: 16.0);

  double get paddingTiny =>
      responsiveValue(mobile: 4.0, tablet: 8.0, desktop: 12.0);

  // ==========================================================
  // JARAK VERTIKAL (Vertical Gap/Space) <--- TAMBAHAN INI
  // ==========================================================

  // Jarak Kecil (Contoh: Jarak antara Teks dan Subteks)
  double get spacingSmallExtra =>
      responsiveValue(mobile: 5.0, tablet: 10.0, desktop: 15.0);

  // Jarak Kecil (Contoh: Jarak antara Teks dan Subteks)
  double get spacingSmall =>
      responsiveValue(mobile: 10.0, tablet: 15.0, desktop: 20.0);

  // Jarak Sedang (Contoh: Jarak antara Logo/Teks dan Form)
  double get spacingMedium =>
      responsiveValue(mobile: 20.0, tablet: 30.0, desktop: 40.0);

  // Jarak Besar (Contoh: Jarak antara bagian-bagian besar di halaman)
  double get spacingLarge =>
      responsiveValue(mobile: 40.0, tablet: 60.0, desktop: 80.0);

  // ==========================================================
  // WIDTH (Lebar)
  // ==========================================================
  double get formWidth =>
      responsiveValue(mobile: width, tablet: width * 0.6, desktop: 400.0);

  // ==========================================================
  // SIZE LOGO
  // ==========================================================

  double get sizeLogoSmall =>
      responsiveValue(mobile: 25.0, tablet: 50.0, desktop: 75.0);

  double get sizeLogoMedium =>
      responsiveValue(mobile: 40.0, tablet: 80.0, desktop: 120.0);
}
