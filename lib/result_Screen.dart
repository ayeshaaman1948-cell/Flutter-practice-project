import "package:flutter/material.dart";
import "package:quiz_app/StyledText.dart";

class ResultScreen extends StatelessWidget {
  final List<String> chosenAnswers;
  const ResultScreen({super.key, required this.chosenAnswers});
  @override
  Widget build(context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: <Color>[
            const Color.fromARGB(205, 3, 142, 255),
            const Color.fromARGB(230, 35, 59, 179),
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: StyledText(
              data: "You have finished the quiz",
              fontSize: 40,
              fontColor: const Color.fromARGB(255, 163, 204, 237),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              elevation: 10,
              backgroundColor: const Color.fromARGB(206, 72, 162, 236),
              padding: EdgeInsets.all(10),
            ),
            onPressed: () {},
            child: StyledText(
              data: "restartQuiz",
              fontSize: 20,
              fontColor: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
