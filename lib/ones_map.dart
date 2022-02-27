
import 'dart:async';

import 'package:flutter/services.dart';

class OnesMap {
  static const MethodChannel _channel = MethodChannel('ones_map');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
