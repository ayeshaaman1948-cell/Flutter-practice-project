import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import "package:my_first_application/AppBarContainers.dart";
import "package:my_first_application/containerfordata.dart";
import "package:my_first_application/styled_text_for_progresstracker.dart";

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
              "assets/images/companion_picture.jpeg",
              height: 200,
              width: 300,
            ),
          ),
          SizedBox(height: 20),
          ContainersForData(100, 360, [
            StyledText("Rating", 25, Color.fromARGB(251, 128, 102, 92)),
            StyledText(
              "The Upward Trend",
              15,
              Color.fromARGB(255, 225, 153, 205),
            ),

            StyledText(
              "Getting better over time.Progress is progress",
              15,
              Color.fromARGB(255, 225, 153, 205),
            ),
          ]),
          SizedBox(height: 14),
          ContainersForData(100, 360, [
            StyledText("Time of Day", 25, Color.fromARGB(251, 128, 102, 92)),
            StyledText("Bookends", 20, Color.fromARGB(255, 225, 153, 205)),
            StyledText(
              "You open and close the day with ritual",
              15,
              Color.fromARGB(255, 225, 153, 205),
            ),
          ]),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ContainersForData(100, 150, [
                StyledText(
                  "Focused Hours",
                  20,
                  Color.fromARGB(251, 128, 102, 92),
                ),
                StyledText("Today", 19, Color.fromARGB(255, 225, 153, 205)),
                StyledText("5 hrs", 18, Color.fromARGB(175, 106, 224, 112)),
              ]),
              SizedBox(width: 50),

              ContainersForData(100, 150, [
                StyledText(
                  "Total breaks",
                  20,
                  Color.fromARGB(251, 128, 102, 92),
                ),
                StyledText("Today", 19, Color.fromARGB(255, 225, 153, 205)),
                StyledText("2 hrs", 18, Color.fromARGB(175, 106, 224, 112)),
              ]),
            ],
          ),
        ],
      ),

      backgroundColor: const Color.fromARGB(161, 231, 144, 173),
    );
  }
}
