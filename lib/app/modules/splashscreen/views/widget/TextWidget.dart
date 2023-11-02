import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../global.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
        'Baca Quran dimana\ndan Kapan Saja',
        style: GoogleFonts.poppins(fontSize: 18,color: text),
        textAlign: TextAlign.center
    );
  }
}