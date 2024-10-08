import 'package:ar_earth_map/controllers/map_controller.dar.dart';
import 'package:ar_earth_map/widgets/ar_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MapView extends StatelessWidget {
  const MapView({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MapController>(
      init: MapController(),
      builder: (controller) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("AR Earth Map"),
          ),
          body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
            ),
            itemCount: controller.earthImages.length,
            itemBuilder: (context, index) {
              final earthImage = controller.earthImages[index];
              return GestureDetector(
                onTap: () {
                  Get.to(() => ARViewWidget(imagePath: earthImage.imagePath));
                },
                child: Card(
                  child: Column(
                    children: [
                      Image.asset(earthImage.imagePath),
                      Text(earthImage.name),
                    ],
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
