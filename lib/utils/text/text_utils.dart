import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Extension ini menempel pada BuildContext
extension ResponsiveText on BuildContext {
  // --- HEADING / JUDUL ---

  // Judul Besar (Halaman Utama)
  double get h1 => responsiveValue(mobile: 24.0, tablet: 32.0, desktop: 42.0);

  // Sub-Judul (Section Header)
  double get h2 => responsiveValue(mobile: 20.0, tablet: 26.0, desktop: 32.0);

  // Judul Kecil (Card Title)
  double get h3 => responsiveValue(mobile: 18.0, tablet: 22.0, desktop: 26.0);

  // --- ISI KONTEN / BODY ---

  // Teks Paragraf Standar
  double get bodyText =>
      responsiveValue(mobile: 14.0, tablet: 16.0, desktop: 18.0);

  // Teks Kecil (Caption / Timestamp / Hint)
  double get smallText =>
      responsiveValue(mobile: 12.0, tablet: 13.0, desktop: 14.0);
}
