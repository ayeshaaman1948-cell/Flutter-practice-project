import "package:flutter/material.dart";
import "package:quiz_app/StyledText.dart";

class StartingPage extends StatelessWidget {
  final void Function() switchScreen;
  const StartingPage(this.switchScreen, {super.key});
  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/flutter_logo.PNG", width: 200, height: 200),
        SizedBox(height: 9),
        StyledText(
          data: "Learn flutter the fun way",
          fontSize: 25,
          fontColor: Colors.white,
        ),
        SizedBox(height: 9),
        ElevatedButton.icon(
          onPressed: () {
            switchScreen();
          },
          label: StyledText(
            data: "Start Quiz",
            fontSize: 18,
            fontColor: Colors.black,
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(206, 60, 193, 255),
            elevation: 6,
          ),
          icon: Icon(
            Icons.access_time_rounded,
            color: const Color.fromARGB(255, 33, 75, 243),
            size: 30,
          ),
        ),
      ],
    );
  }
}
