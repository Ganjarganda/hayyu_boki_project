import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

extension ResponsiveSpacing on BuildContext {
  // Padding / Spacing
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

  double get formWidth =>
      responsiveValue(mobile: width, tablet: width * 0.6, desktop: 400.0);
}
