import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:qurannapp/app/global.dart';

import '../../controllers/profil_controller.dart';


class ChangePictWithGalery extends StatelessWidget {
  ChangePictWithGalery ({super.key});

  final ProfilController _controller = Get.put(ProfilController());

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 375,left: 40),
      child: Card(
        color: Primary,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
        ),
        child: TextButton(
          onPressed: () {
            _controller.pickImageGalery();
          },
          child: const Text(
            '  FROM GALLERY  ',
            style: TextStyle(
                color: Colors.white
            ),
          ),
        ),
      ),
    );
  }
}
