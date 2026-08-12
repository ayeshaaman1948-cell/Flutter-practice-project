import 'package:flutter/material.dart';
import "package:my_first_application/styled_text.dart";

class StudentInfo extends StatelessWidget {
  @override
  Widget build(context) {
    return Container(
      width: 430,
      height: 426,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            const Color.fromARGB(255, 37, 224, 224),
            Colors.deepOrangeAccent,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        children: [
          StyledText(" Name :"),
          StyledText(" Ayesha Aman"),
          StyledText(" university name:"),
          StyledText("     "),
          StyledText(" Imsciences"),
          StyledText(" Department name:"),
          StyledText(" DataSciences"),
          StyledText("Age:"),
          StyledText(" 19"),
        ],
      ),
    );
  }
}
