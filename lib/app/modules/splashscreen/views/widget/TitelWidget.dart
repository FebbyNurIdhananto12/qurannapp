import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitelWidget extends StatelessWidget {
  const TitelWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'bY Quran App',
      style: GoogleFonts.poppins(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 28
      ),
    );
  }
}