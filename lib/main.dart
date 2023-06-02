import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:style_me_app/pages/home.dart';
import 'package:style_me_app/providers/image_handler.dart';
import 'package:style_me_app/utils/app_utils.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
       ChangeNotifierProvider(create: (_) => ImageHandler()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Style Me',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
      navigatorKey: AppUtils.navigatorKey,
    );
  }
}

