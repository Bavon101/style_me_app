import 'package:flutter/material.dart';

class AppUtils {
  static String introWelcome = "Style Me - Style by AI";
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

  static List<String> homeImages = [
    "https://plus.unsplash.com/premium_photo-1664442593274-38caa77af985?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c3R5bGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1525299374597-911581e1bdef?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c3R5bGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1521443331827-88ee11ea2706?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8c3R5bGUlMjBhZnJpY2F8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1628682819336-3d52f343173d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTZ8fHN0eWxlJTIwYWZyaWNhfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1519238359922-989348752efb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTl8fHN0eWxlJTIwYWZyaWNhfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1567536894065-1d8a627a9561?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MjF8fHN0eWxlJTIwYWZyaWNhfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1524635391473-6ecec8288f3d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MzJ8fHN0eWxlJTIwYWZyaWNhfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1642929518457-d3517756353f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NDF8fHN0eWxlJTIwYWZyaWNhfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60",
    "https://images.unsplash.com/photo-1600178890085-39bc0bffd881?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NjR8fHN0eWxlJTIwYWZyaWNhfGVufDB8fDB8fHww&auto=format&fit=crop&w=800&q=60"
  ];

  static List<Map<String, String>> categories = [
    {
      "image": "https://plus.unsplash.com/premium_photo-1664442593274-38caa77af985?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8c3R5bGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60",
      "name": "New arrivals",
    },
    {
      "image": "https://images.unsplash.com/photo-1525299374597-911581e1bdef?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Nnx8c3R5bGV8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60",
      "name": "Trending",
    },
    {
      "image": "https://images.unsplash.com/photo-1521443331827-88ee11ea2706?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8c3R5bGUlMjBhZnJpY2F8ZW58MHx8MHx8fDA%3D&auto=format&fit=crop&w=800&q=60",
      "name": "Best sellers",
    }
  ];
}
