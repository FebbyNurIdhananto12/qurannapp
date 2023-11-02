import 'package:flutter/material.dart';

import '../../../../data/model/surah.dart';

class SurahItemWidget extends StatelessWidget {
  final Surah surah;
  const SurahItemWidget({
    super.key,
    required this.surah
  });

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(10),
      child: Stack(
        children: [
          Container(
            height: 131,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops: [0, 0.6, 1],
                colors: [Color(0xFFDF98FA), Color(0xFFB070FD), Color(0xFF9055FF)],
              ),
            ),
          ),
          Positioned(
            bottom: -40,
            right: -15,
            child: Image.asset(
              'assets/Home.png',
              width: 200,
              height: 200,
            ),
          ),
          Positioned(
            bottom: 40,
            left: 15,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  surah.namaLatin,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  '${surah.tempatTurun} | ${surah.jumlahAyat}',
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 15,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }
}
