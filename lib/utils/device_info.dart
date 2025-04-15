import 'dart:io';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/foundation.dart';

class DeviceUtils {
  static Future<String> getDeviceId() async {
    final deviceInfo = DeviceInfoPlugin();

    try {
      if (Platform.isAndroid) {
        final androidInfo = await deviceInfo.androidInfo;
        if (kDebugMode) {
          print('Device Info - Android: ${androidInfo.id}');
        }
        return androidInfo.id ?? 'unknown-android';
      } else if (Platform.isIOS) {
        final iosInfo = await deviceInfo.iosInfo;
        if (kDebugMode) {
          print('Device Info - iOS: ${iosInfo.identifierForVendor}');
        }
        return iosInfo.identifierForVendor ?? 'unknown-ios';
      } else {
        return 'unsupported-platform';
      }
    } catch (e) {
      if (kDebugMode) {
        print('Gagal mengambil device ID: $e');
      }
      return 'error-getting-device-id';
    }
  }
}
