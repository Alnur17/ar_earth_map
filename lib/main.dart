import 'package:ar_earth_map/utils/app_theme.dart';
import 'package:ar_earth_map/views/splash_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'AR Earth Map',
      theme: appTheme,
      home: const SplashView(),
    );
  }
}
