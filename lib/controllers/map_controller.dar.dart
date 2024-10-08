import 'package:ar_earth_map/utils/app_constants.dart';
import 'package:get/get.dart';
import '../models/earth_image_model.dart';

class MapController extends GetxController {
  List<EarthImageModel> earthImages = [];

  @override
  void onInit() {
    super.onInit();
    loadEarthImages();
  }

  void loadEarthImages() {
    earthImages = [
      EarthImageModel(name: "Earth", imagePath: AppConstants.earthImagePath),
    ];
    update();  // Notify the UI to update with GetBuilder
  }
}
