import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddAnimalController extends GetxController {
  static AddAnimalController get instance => Get.find();

  RxString selectedGender = RxString('Male');
  Rx<XFile?> image = Rx<XFile?>(null);
  RxString selectedStatus = 'IsMilked'.obs;

  final dateController = TextEditingController();
  final nameController = TextEditingController();
  final breedController = TextEditingController();
  final serialController = TextEditingController();

  Future<void> takeImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      image.value = XFile(pickedFile.path);
    } else {
      Get.snackbar("Error", "No image selected",
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  setGender(String gender) {
    selectedGender.value = gender;
  }

  void setStatus(String status) {
    selectedStatus.value = status;
  }

  void addAnimal() {
    if (dateController.text.isEmpty) {
      Get.snackbar(
        "Error", // Title
        "Please enter the date of birth", // Message
        snackPosition: SnackPosition.BOTTOM, // Position
        backgroundColor: Colors.red, // Background color
        colorText: Colors.white, // Text color
      );
      return;
    }
    if (nameController.text.isEmpty) {
      Get.snackbar(
        "Error", // Title
        "Please enter the name", // Message
        snackPosition: SnackPosition.BOTTOM, // Position
        backgroundColor: Colors.red, // Background color
        colorText: Colors.white, // Text color
      );
      return;
    }
    if (breedController.text.isEmpty) {
      Get.snackbar(
        "Error", // Title
        "Please enter the breed", // Message
        snackPosition: SnackPosition.BOTTOM, // Position
        backgroundColor: Colors.red, // Background color
        colorText: Colors.white, // Text color
      );
      return;
    }
    if (serialController.text.isEmpty) {
      Get.snackbar(
        "Error", // Title
        "Please enter the serial number", // Message
        snackPosition: SnackPosition.BOTTOM, // Position
        backgroundColor: Colors.red, // Background color
        colorText: Colors.white, // Text color
      );
      return;
    }
  }

  @override
  void onClose() {
    dateController.dispose();
    super.onClose();
  }
}
