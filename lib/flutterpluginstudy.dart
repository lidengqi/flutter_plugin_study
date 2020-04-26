import 'dart:async';

import 'package:flutter/services.dart';

class Flutterpluginstudy {
  static const MethodChannel _channel =
      const MethodChannel('flutterpluginstudy');

  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  static Future<int> calculate(int a, int b) async {
    final String result = await _channel.invokeMethod('calculate', {
      'a': a,
      'b': b
    });
    return int.parse(result);
  }
}
