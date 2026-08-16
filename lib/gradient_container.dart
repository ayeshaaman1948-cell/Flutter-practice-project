import 'package:flutter/material.dart';
import 'package:my_first_application/Styled_text_for_profile.dart';

class StudentProfile extends StatelessWidget {
  const StudentProfile(Key? key) : super(key: key);
  @override
  Widget build(context) {
    return Scaffold(
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
    );
  }
}

class GradientContainerWithStudentInfo extends StatelessWidget {
  final Color color1;
  final Color color2;
  const GradientContainerWithStudentInfo(this.color1, this.color2);

  @override
  Widget build(context) {
    return Container(
      width: 700,
      height: 900,
      margin: EdgeInsets.all(5),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
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
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.center,
        children: [
          StyledText("Name : Ayesha Aman", 20),
          StyledText("     ", 5),
          StyledText("University name:IMsciences", 20),
          StyledText("     ", 5),
          StyledText("Department name:DataScience", 20),
          StyledText("     ", 5),
          StyledText("Semester:3", 20),
          StyledText("     ", 5),
          StyledText("CGPA:3.42", 20),
          StyledText("     ", 5),
          StyledText("Skills:", 20),
          StyledText("1. Dart", 20),
          StyledText("2. OOP programming", 20),
        ],
      ),
    );
  }
}
