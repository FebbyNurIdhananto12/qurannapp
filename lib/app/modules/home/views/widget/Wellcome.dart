import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qurannapp/app/modules/home/controllers/home_controller.dart';

import '../../../../global.dart';
import 'surah_item_widget.dart';

class Wallcome extends StatelessWidget {
  final controller = Get.put(HomeController());
  Wallcome({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Assalamualaikum',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500, color: text),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            'Febby Nur Idhananto',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          SizedBox(
            height: 24,
          ),
          Obx(() {
            if (controller.isLoading.value) {
// Display a progress indicator while loading
              return Center(
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                      Theme.of(context).colorScheme.secondary),
                ),
              );
            } else {
// Display the list of articles
              return Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: controller.surah.length,
                  itemBuilder: (context, index) {
                    var surah = controller.surah[index];
                    return SurahItemWidget(surah: surah);
                  },
                ),
              );
            }
          }),
        ]
    );
  }
}

