import 'package:flutter/material.dart';

class IconMasukWidget extends StatelessWidget {
  const IconMasukWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 40,
        vertical: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.orange, // Assuming 'orange' is a valid color variable
        borderRadius: BorderRadius.circular(30),
      ),
      child: Text(
        'MASUK',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}