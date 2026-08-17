import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

class Dice extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
      width: 400,
      height: 900,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[Colors.pink, Colors.white],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/dice3_picture.png",
              width: 100,
              height: 150,
            ),

            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(185, 221, 102, 142),
                elevation: 6,
              ),
              child: Text(
                "Roll Dice",
                style: GoogleFonts.aboreto(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
