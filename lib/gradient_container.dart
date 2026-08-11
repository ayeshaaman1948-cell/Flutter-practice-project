import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  final Color color1;
  final Color color2;
  const GradientContainer(this.color1, this.color2);

  @override
  Widget build(context) {
    return Container(
      width: 600,
      height: 900,
      margin: EdgeInsets.all(10),
      //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        // color: const Color.fromARGB(21, 251, 252, 249),
        shape: BoxShape.rectangle,

        gradient: LinearGradient(
          colors: <Color>[color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Center(child: Image.asset("assets/images/profile pic.png")),
    );
  }
}
