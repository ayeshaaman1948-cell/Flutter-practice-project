import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class ProgressTracker extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SizedBox(
              height: 20,
              width: 900,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 116, 82, 70),
                  elevation: 4,
                ),
                child: Text(
                  "Overview",
                  style: GoogleFonts.allura(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
