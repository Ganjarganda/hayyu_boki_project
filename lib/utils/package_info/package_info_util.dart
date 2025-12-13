import 'package:package_info_plus/package_info_plus.dart';

class PackageInfoUtil {
  static final PackageInfoUtil _instance = PackageInfoUtil._();

  PackageInfo? _packageInfo;

  factory PackageInfoUtil() {
    return _instance;
  }

  PackageInfoUtil._();

  Future<void> initPackageInfo() async {
    _packageInfo = await PackageInfo.fromPlatform();
  }

  String getpackageName() {
    return _packageInfo?.packageName ?? '';
  }

  String getAppVersion() {
    return _packageInfo?.version ?? '';
  }
}
