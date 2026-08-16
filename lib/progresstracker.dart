import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import "package:my_first_application/AppBarContainers.dart";
import "package:my_first_application/containerfordata.dart";

class ProgressTracker extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          children: [
            AppBarContainers("Overview", 40, 150),
            SizedBox(width: 5),
            AppBarContainers("Time of Day", 40, 170),
          ],
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 15),
          Center(
            child: Text(
              "Your companion is .....",
              style: GoogleFonts.gloriaHallelujah(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(200, 92, 68, 59),
              ),
            ),
          ),
          Center(
            child: Text(
              " Ballerina Pig",
              style: GoogleFonts.sigmarOne(
                fontSize: 27,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(171, 235, 152, 211),
              ),
            ),
          ),
          SizedBox(height: 7),
          Center(
            child: Image.asset(
              "assets/images/compainpic.jpeg",
              height: 200,
              width: 300,
            ),
          ),
          SizedBox(height: 20),
          ContainersForData(100, 360),
          SizedBox(height: 14),
          ContainersForData(100, 360),
        ],
      ),

      backgroundColor: const Color.fromARGB(161, 231, 144, 173),
    );
  }
}
