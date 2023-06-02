
import 'package:flutter/material.dart';

class AppUtils {
  static String appDescription =
      "Discover your personal style, Get an AI-powered personal stylist that offers recommendations to help you look and feel your best with unique African designs";
  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  static bool isHttpUri(String uri) {
    Uri? parsedUri = Uri.tryParse(uri);
    if (parsedUri == null) {
      throw FormatException('Invalid URI: $uri');
    }
    return parsedUri.scheme == 'http' || parsedUri.scheme == 'https';
  }
}
