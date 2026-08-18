import "package:flutter/material.dart";
import "package:my_first_application/DiceRollingAtRuntime.dart";

class Dice extends StatelessWidget {
  const Dice({super.key});

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
      child: Center(child: DiceRollingAtRuntime()),
    );
  }
}
