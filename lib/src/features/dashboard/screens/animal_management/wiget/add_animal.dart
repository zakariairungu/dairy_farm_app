import 'dart:io';

import 'package:dairy_farm_app/src/features/dashboard/controllers/add_animal_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_icons/line_icons.dart';

class AddAnimal extends StatefulWidget {
  const AddAnimal({
    super.key,
  });

  @override
  State<AddAnimal> createState() => _AddAnimalState();
}

class _AddAnimalState extends State<AddAnimal> {
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AddAnimalController());
    return Dialog(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("Add animal"),
                  IconButton(
                    onPressed: () => Navigator.of(context).pop(),
                    icon: const Icon(Icons.cancel),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  ElevatedButton.icon(
                    label: const Text("Take Image"),
                    onPressed: () {
                      AddAnimalController.instance.takeImage();
                    },
                    icon: const Icon(Icons.add_a_photo),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration: BoxDecoration(
                        border: Border.all(width: 1), shape: BoxShape.circle),
                    child: Obx(
                      () => Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(35),
                          child: controller.image.value == null
                              ? const Text("No image")
                              : Image.file(
                                  File(controller.image.value!.path),
                                  fit: BoxFit.cover,
                                  height: 70,
                                  width: 70,
                                ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: controller.nameController,
                decoration: const InputDecoration(
                  labelText: "Enter name",
                  prefixIcon: Icon(LineIcons.bullhorn),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: controller.serialController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: "Enter Serial",
                  prefixIcon: Icon(Icons.numbers),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: controller.breedController,
                decoration: const InputDecoration(
                  labelText: "Enter Breed",
                  prefixIcon: Icon(LineIcons.cowboyHat),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: controller.dateController,
                decoration: InputDecoration(
                  labelText: "Date of birth",
                  prefixIcon: const Icon(Icons.blur_linear),
                  suffixIcon: IconButton(
                    onPressed: () {
                      showDatePicker(
                        context: context,
                        firstDate: DateTime(2000),
                        lastDate: DateTime.now(),
                      ).then((value) {
                        if (value != null) {
                          controller.dateController.text =
                              value.toString().split(' ')[0];
                        }
                      });
                    },
                    icon: const Icon(Icons.calendar_month),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  const Text("Select gender"),
                  const SizedBox(
                    width: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      border: Border.all(width: 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Obx(
                      () => DropdownButton(
                        value: controller.selectedGender.value,
                        items: const [
                          DropdownMenuItem(
                            value: "Male",
                            child: Text("Male"),
                          ),
                          DropdownMenuItem(
                            value: "Female",
                            child: Text("Female"),
                          )
                        ],
                        onChanged: (value) {
                          controller.selectedGender.value = value as String;
                        },
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Obx(
                () => Visibility(
                  visible: AddAnimalController.instance.selectedGender.value ==
                      'Female',
                  child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(width: 1),
                          borderRadius: BorderRadius.circular(10)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              const Text(
                                "IsMilked:",
                                style: TextStyle(fontSize: 10),
                              ),
                              Radio(
                                  value: "IsMilked",
                                  groupValue: controller.selectedStatus.value,
                                  onChanged: (value) {
                                    controller.setStatus(value!);
                                  }),
                            ],
                          ),
                          Column(
                            children: [
                              const Text(
                                "Calf:",
                                style: TextStyle(fontSize: 10),
                              ),
                              Radio(
                                  value: "Calf",
                                  groupValue: controller.selectedStatus.value,
                                  onChanged: (value) {
                                    controller.setStatus(value!);
                                  }),
                            ],
                          ),
                          Column(
                            children: [
                              const Text(
                                "NotMilked:",
                                style: TextStyle(fontSize: 10),
                              ),
                              Radio(
                                  value: "NotMilked",
                                  groupValue: controller.selectedStatus.value,
                                  onChanged: (value) {
                                    controller.setStatus(value!);
                                  }),
                            ],
                          )
                        ],
                      )),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  controller.addAnimal();
                },
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
