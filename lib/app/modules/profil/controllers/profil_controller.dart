import 'dart:io';

import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfilController extends GetxController {
  final ImagePicker imagePicker = ImagePicker();
  final pickedImage = Rx<File?>(null);

  Future<void> pickImageGalery() async {
    try {
      var pickedfile = await imagePicker.pickImage(source: ImageSource.gallery);

      //you can use ImageCourse.camera for Camera capture
      if (pickedfile != null) {
        pickedImage.value = File(pickedfile.path);
      }
    } catch (e) {
      print('error while picking file.');
    }
  }
  Future<void> pickImageCamera() async {
    try {
      var pickedfile = await imagePicker.pickImage(source: ImageSource.camera);

      //you can use ImageCourse.camera for Camera capture
      if (pickedfile != null) {
        pickedImage.value = File(pickedfile.path);
      }
    } catch (e) {
      print('error while picking file.');
    }
  }
}
