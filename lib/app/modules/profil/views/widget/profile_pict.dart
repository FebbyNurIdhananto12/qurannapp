import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../controllers/profil_controller.dart';


class ProfilePictWidget extends StatelessWidget {
  const ProfilePictWidget ({super.key});

  @override
  Widget build(BuildContext context) {
    final ProfilController controller = Get.find<ProfilController>();

    return Container(
        height: 200,
        width: 200,
        margin: const EdgeInsets.only(top: 110, left: 90),
        child: Obx(() {
          return controller.pickedImage.value != null
              ? ClipOval(
            child: Image.file(controller.pickedImage.value!, fit: BoxFit.cover),
          )
              : ClipOval(
            child: Image.asset('assets/profil.jpeg', fit: BoxFit.cover),
          );
        }),
    );
  }
}
