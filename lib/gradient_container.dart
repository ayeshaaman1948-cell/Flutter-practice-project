import 'package:flutter/material.dart';
import 'package:my_first_application/styled_text.dart';

class GradientContainerWithStudentInfo extends StatelessWidget {
  final Color color1;
  final Color color2;
  const GradientContainerWithStudentInfo(this.color1, this.color2);

  @override
  Widget build(context) {
    return Container(
      width: 700,
      height: 900,
      // margin: EdgeInsets.all(5),
      //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      decoration: BoxDecoration(
        // color: const Color.fromARGB(21, 251, 252, 249),
        shape: BoxShape.rectangle,

        gradient: LinearGradient(
          colors: <Color>[color1, color2],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        // borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          StyledText("Name : Ayesha Aman"),
          StyledText("     "),
          StyledText("University name:IMsciences"),
          StyledText("     "),
          StyledText("Dept name:DataSciences"),
          StyledText("     "),
          StyledText("Age: 19"),
          StyledText("     "),
          StyledText("Semester:3"),
          StyledText("     "),
          StyledText("CGPA:3.42"),
          StyledText("     "),

          StyledText("Skills:Oop programming"),
          StyledText("     "),
          StyledText("Skills:Dart"),
        ],
      ),
    );
  }
}
