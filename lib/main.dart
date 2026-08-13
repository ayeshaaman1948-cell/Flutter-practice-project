import 'package:flutter/material.dart';
import 'package:my_first_application/gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        //backgroundColor: const Color.fromARGB(255, 3, 236, 244),
        appBar: AppBar(
          title: Text(
            "Data Science Student Profile :Ayesha Aman ",
            style: TextStyle(fontSize: 17, color: Colors.white),
          ),
          backgroundColor: const Color.fromARGB(237, 5, 205, 208),
        ),
        body: GradientContainerWithStudentInfo(
          const Color.fromARGB(188, 44, 220, 236),
          const Color.fromARGB(255, 223, 212, 208),
        ),
      ),
    ),
  );
}
