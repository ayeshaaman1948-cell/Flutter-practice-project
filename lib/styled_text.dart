import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class StyledText extends StatelessWidget {
  final String text;

  const StyledText(this.text);

  @override
  Widget build(context) {
    return Text(
      text,
      style: GoogleFonts.novaMono(
        fontSize: 26,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
