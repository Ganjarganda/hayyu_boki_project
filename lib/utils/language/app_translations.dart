import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'change_lang': 'Bahasa Indonesia',
      'smart_financial_management': 'Smart financial management',
    },
    'id_ID': {
      'change_lang': 'English',
      'smart_financial_management': 'Manajemen keuangan yang cerdas',
    }
  };
}