import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class StyledText extends StatelessWidget {
  final String text;
  final double fontSize;

  const StyledText(this.text, this.fontSize);

  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.novaMono(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
