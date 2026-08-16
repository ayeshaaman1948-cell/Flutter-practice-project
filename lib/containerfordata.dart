import 'package:flutter/material.dart';
import "package:my_first_application/styled_text_for_progresstracker.dart";

class ContainersForData extends StatelessWidget {
  final double height;
  final double width;
  const ContainersForData(this.height, this.width);
  @override
  Widget build(context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromARGB(125, 213, 152, 196),
            Color.fromARGB(178, 117, 89, 78),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(9),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StyledText("Rating:", 20, Color.fromARGB(251, 128, 102, 92)),
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
        ],
      ),
    );
  }
}
