import 'package:flutter/material.dart';

class GambarWidget extends StatelessWidget {
  const GambarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xFF672CBC),
      ),
      child: Image.asset(
        'assets/quran.png',
        fit: BoxFit.cover,
      ),
    );
  }
}