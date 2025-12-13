import 'package:hayyu_boki_project/services/storage/box_storage.dart';

class EventLanguage {
  /// --- os version
  userLanguageCode_save(String value) {
    BoxStorage.box.write('userLanguageCode', value);
  }

  static userLanguageCode_get() {
    String? value = BoxStorage.box.read('userLanguageCode');
    return value ?? 'en';
  }
}
