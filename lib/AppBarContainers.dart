import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class AppBarContainers extends StatelessWidget {
  final String text;
  final double height;
  final double width;
  final Color buttonColors = Colors.brown;
  const AppBarContainers(this.text, this.height, this.width);

  @override
  Widget build(contex) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: buttonColors,
          elevation: 6,
        ),
        child: Text(
          text,
          style: GoogleFonts.convergence(
            fontSize: 20,
            fontWeight: FontWeight.normal,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
