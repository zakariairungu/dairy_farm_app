import 'package:flutter/material.dart';

import '../screens/animal_management/wiget/add_animal.dart';

Future<dynamic> addAnimal(BuildContext context) {
  return showDialog(
      context: context,
      builder: (context) {
        return const AddAnimal();
      });
}

