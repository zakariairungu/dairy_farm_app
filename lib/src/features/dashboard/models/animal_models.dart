import 'dart:io';

class Animal {
  final String selectedGender;
  final File? image;
  final String? selectedStatus;
  final String dateOfBirth;
  final String name;
  final String breed;
  final String serialNumber;

  Animal({
    required this.selectedGender,
    required this.image,
    required this.selectedStatus,
    required this.dateOfBirth,
    required this.name,
    required this.breed,
    required this.serialNumber,
  });
}
