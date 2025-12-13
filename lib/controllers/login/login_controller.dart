import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hayyu_boki_project/services/storage/language/event_language.dart';

class LoginController extends GetxController {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    // Panggil ini saat Controller pertama kali dibuat
    loadSavedLanguage();

    // Inisialisasi controller
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void onClose() {
    super.onClose();
    // WAJIB: Dispose controller agar hemat memori
    emailController.dispose();
    passwordController.dispose();
  }

  // --- LOGIKA SAAT STARTUP: MEMBACA BAHASA TERSIMPAN ---
  void loadSavedLanguage() {
    String? savedCode =
        EventLanguage.userLanguageCode_get(); // Baca dari storage

    if (savedCode != null) {
      // Jika ada yang tersimpan, gunakan itu
      if (savedCode == 'en') {
        Get.updateLocale(const Locale('en', 'US'));
      } else if (savedCode == 'id') {
        Get.updateLocale(const Locale('id', 'ID'));
      }
    }
    // Jika savedCode null, biarkan GetMaterialApp menggunakan default di main.dart
  }

  // Ganti Bahasa
  void toggleLanguage() {
    Locale newLocale;
    String currentCode = Get.locale?.languageCode ?? 'en'; // Default EN

    if (currentCode == 'id') {
      newLocale = const Locale('en', 'US');
      EventLanguage().userLanguageCode_save('en'); // Simpan kode 'en'
    } else {
      newLocale = const Locale('id', 'ID');
      EventLanguage().userLanguageCode_save('id'); // Simpan kode 'id'
    }

    // Perbarui bahasa aplikasi
    Get.updateLocale(newLocale);
  }

  // Ganti Tema (Dark/Light)
  void toggleTheme() {
    if (Get.isDarkMode) {
      Get.changeThemeMode(ThemeMode.light);
    } else {
      Get.changeThemeMode(ThemeMode.dark);
    }
  }
}
