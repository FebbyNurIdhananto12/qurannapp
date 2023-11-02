import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qurannapp/app/global.dart';

import '../../controllers/profil_controller.dart';

class ChangePictWithCamera extends StatelessWidget {
  ChangePictWithCamera ({super.key});
  final ProfilController _controller = Get.put(ProfilController());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 375,left: 210,right: 10),
      child: Card(
        color: Primary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        child: TextButton(
          onPressed: () {
            _controller.pickImageCamera();
          },
          child: const Text(
            ' TAKE A CAMERA ',
            style: TextStyle(
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
