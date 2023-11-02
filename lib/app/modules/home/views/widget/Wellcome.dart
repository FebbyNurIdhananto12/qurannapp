import 'package:flutter/material.dart';

import '../../../../global.dart';

class Wallcome extends StatelessWidget {
  const Wallcome({
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
          Stack(
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
                      'Al-Fatihah',
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
                      'Mekah | 7 Ayat',
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
        ]
    );
  }
}
