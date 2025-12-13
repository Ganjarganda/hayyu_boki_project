import 'package:get_storage/get_storage.dart';

class BoxStorage {
  static const boxStorage = 'box_storage';
  static final GetStorage box = GetStorage(boxStorage);

  /// --- all
  static removeStorage() {
    box.erase();
  }
}