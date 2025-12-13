import 'package:get/get.dart';

class AppTranslations extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'change_lang': 'Bahasa Indonesia',
      'smart_financial_management': 'Smart financial management',
      'hint_email': 'your@email.com',
    },
    'id_ID': {
      'change_lang': 'English',
      'smart_financial_management': 'Manajemen keuangan yang cerdas',
      'hint_email': 'kamu@email.com',
    },
  };
}
