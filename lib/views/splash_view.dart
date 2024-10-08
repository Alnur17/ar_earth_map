import 'package:ar_earth_map/views/map_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.to(() => const MapView()),
          child: const Text("Go to Earth Map"),
        ),
      ),
    );
  }
}
