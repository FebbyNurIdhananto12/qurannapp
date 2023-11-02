import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qurannapp/app/global.dart';
import 'package:qurannapp/app/modules/profil/views/widget/change_pict_camera.dart';
import 'package:qurannapp/app/modules/profil/views/widget/change_pict_galery.dart';
import 'package:qurannapp/app/modules/profil/views/widget/profile_pict.dart';

import '../controllers/profil_controller.dart';

class ProfilView extends GetView<ProfilController> {
  const ProfilView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: AppBar(
        title: Text('PROFILE'),
        backgroundColor: Primary,
      ),
        body: Stack(
          children: [
            const ProfilePictWidget(),
            ChangePictWithCamera(),
            ChangePictWithGalery()
          ],
        )
    );
  }
}
