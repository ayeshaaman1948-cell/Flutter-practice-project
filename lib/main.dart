import 'package:flutter/material.dart';
import 'package:my_first_application/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        //backgroundColor: const Color.fromARGB(169, 13, 185, 194),
        appBar: AppBar(
          title: Text(
            "Data Science Student Profile :Ayesha Aman ",
            style: TextStyle(fontSize: 17, color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(255, 144, 20, 32),
        ),
        body: GradientContainer(
          const Color.fromARGB(190, 248, 246, 121),
          const Color.fromARGB(255, 242, 117, 158),
        ),
      ),
    ),
  );
}
