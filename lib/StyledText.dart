import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class StyledText extends StatelessWidget {
  final String data;
  final double fontSize;
  final Color fontColor;
  const StyledText({
    required this.data,
    required this.fontSize,
    required this.fontColor,
    super.key,
  });
  @override
  Widget build(context) {
    return Text(
      data,
      style: GoogleFonts.alexandria(
        color: fontColor,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
