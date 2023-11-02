import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:qurannapp/app/modules/home/views/widget/Wellcome.dart';
import 'package:qurannapp/app/modules/profil/views/profil_view.dart';

import '../../../global.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      appBar: _appBar(),
      bottomNavigationBar: _bottomNavigationBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: NestedScrollView(
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return [SliverToBoxAdapter(child: Wallcome())];
          },
          body: Container(),
        ),
      ),
    );
  }

  AppBar _appBar() =>
      AppBar(backgroundColor: gray,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
            children: [Text('bY Quran App',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),)
            ]),
      );

  BottomNavigationBar _bottomNavigationBar() {
    return BottomNavigationBar(
      backgroundColor: gray,
      selectedItemColor: Primary,
      unselectedItemColor: Colors.grey,
      items: [
        _bottomBarItem("iconqrn.png", "Surah"),
        _bottomBarItem("ifavorite.png", "Favorite"), // Perhatikan penambahan ekstensi .png
        BottomNavigationBarItem(
          icon: Icon(Icons.person_3_outlined), // Ganti ikon sesuai kebutuhan
          label: "Profil",
        ),
      ],
      onTap: (int index) {
        if (index == 2) { // Index 2 adalah indeks untuk "Jadwal Sholat"
          Get.to(ProfilView());
        }
      },
    );
  }

  BottomNavigationBarItem _bottomBarItem(String iconName, String label) {
    return BottomNavigationBarItem(
      icon: ImageIcon(AssetImage("assets/$iconName")),
      label: label,
    );
  }
}
