import 'package:flutter/material.dart';
import "package:my_first_application/styled_text_for_progresstracker.dart";

class ContainersForData extends StatelessWidget {
  final double height;
  final double width;
  final List<StyledText> styledTextContainer;
  const ContainersForData(this.height, this.width, this.styledTextContainer);
  @override
  Widget build(context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            Color.fromARGB(105, 220, 7, 160),
            Color.fromARGB(199, 195, 183, 172),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(9),
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          styledTextContainer[0],
          styledTextContainer[1],
          styledTextContainer[2],
        ],
      ),
    );
  }
}
