import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "Dart:math";

class DiceRollingAtRuntime extends StatefulWidget {
  const DiceRollingAtRuntime({super.key});
  @override
  State<DiceRollingAtRuntime> createState() {
    return _DiceRollingAtRuntimeState();
  }
}

class _DiceRollingAtRuntimeState extends State<DiceRollingAtRuntime> {
  var activeImage = "assets/images/dice4_picture.png";

  void rollDice() {
    setState(() {
      var currentDiceNumber = Random().nextInt(6) + 1;
      activeImage = "assets/images/dice${currentDiceNumber}_picture.png";
    });
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(activeImage, width: 100, height: 150),

        ElevatedButton(
          onPressed: () {
            rollDice();
          },
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
    );
  }
}
