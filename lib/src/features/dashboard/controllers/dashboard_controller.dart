import 'package:get/get.dart';

class DashboardController extends GetxController {
  static DashboardController get instance => Get.find();

  RxInt selectedIndex = 0.obs;

  void isTaped(int index) {
    selectedIndex.value = index;
  }
}
