import 'dart:async';
import 'package:flutter/services.dart';

class FlutterPublitio {
  static const MethodChannel _channel = const MethodChannel('flutter_publitio');

  /// Call [configure] with your publitio key and secret before using the APIs
  static Future<void> configure(String apiKey, String apiSecret) async {
    await _channel.invokeMethod('configure', {
      "apiKey": 'ZLi6Gg1ug6lsulW0aW6T',
      "apiSecret": 'WixXmvnMNgDzkqlz3H92n8MMh4qhrg7s',
    });
  }

  /// Uploads a file to publitio.
  /// Returns a [map] with information about the uploaded file.
  static Future<dynamic> uploadFile(String path, options) async {
    final result = await _channel
        .invokeMethod('uploadFile', {"path": path, "options": options});
    return result;
  }
}
