import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qurannapp/app/modules/home/views/home_view.dart';
import 'package:qurannapp/app/modules/splashscreen/views/widget/GambarWidget.dart';
import 'package:qurannapp/app/modules/splashscreen/views/widget/IconMasukWidget.dart';
import 'package:qurannapp/app/modules/splashscreen/views/widget/TextWidget.dart';
import 'package:qurannapp/app/modules/splashscreen/views/widget/TitelWidget.dart';

import '../../../global.dart';
import '../controllers/splashscreen_controller.dart';

class SplashscreenView extends GetView<SplashscreenController> {
  const SplashscreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TitelWidget(),
              const SizedBox(height: 14,),
              TextWidget(),
              const SizedBox(height: 48),
              Stack(
                clipBehavior: Clip.none,
                children: [
                  GambarWidget(),
                  Positioned(
                    left: 0,
                    bottom: -23,
                    right: 0,
                    child: Center(
                      child: GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {
                          // Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
                          Get.to(HomeView());
                        },
                        child: IconMasukWidget(),
                      ),
                    ),
                  )],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
