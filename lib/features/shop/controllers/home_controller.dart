import 'package:get/get.dart';

class HomeController extends GetxController {
  static HomeController get instance => Get.find();

  final carsoulIndex = 0.obs;

  void updateIndex(index) {
    carsoulIndex.value = index;
  }
}
