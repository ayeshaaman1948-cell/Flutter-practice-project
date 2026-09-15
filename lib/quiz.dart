import "package:flutter/material.dart";
import "package:quiz_app/model/questionscontainer.dart";
import "package:quiz_app/starting_page.dart";
import "package:quiz_app/questions.dart";
import "package:quiz_app/result_Screen.dart";

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  late Widget activeScreen;
  List<String> chosenAnswers = [];
  String checkForResultScreen = "not set";

  void chooseAnswer(String answer) {
    chosenAnswers.add(answer);
    if (chosenAnswers.length == questions.length) {
      setState(() {
        activeScreen = ResultScreen(
          chosenAnswers: chosenAnswers,
          switchScreen: switchScreen,
        );
        checkForResultScreen = "set";
      });
    }
  }

  @override
  initState() {
    super.initState();
    activeScreen = StartingPage(switchScreen);
  }

  void switchScreen() {
    setState(() {
      if (checkForResultScreen == "set") {
        activeScreen = StartingPage(switchScreen);
        chosenAnswers = [];
        checkForResultScreen = " not set";
      } else {
        activeScreen = Questions(selectedAnswer: chooseAnswer);
      }
    });
  }

  @override
  Widget build(context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
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
          child: activeScreen,
        ),
      ),
    );
  }
}
