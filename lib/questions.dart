import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";
import "package:quiz_app/answerButtonTemplate.dart";
import "package:quiz_app/model/questionscontainer.dart";

class Questions extends StatefulWidget {
  final void Function(String answer) selectedAnswer;

  const Questions({super.key, required this.selectedAnswer});

  @override
  State<Questions> createState() {
    return _QuestionsState();
  }
}

class _QuestionsState extends State<Questions> {
  int indexOfQuestion = 0;
  var currentQuestion = questions;

  void incrementIndex() {
    setState(() {
      indexOfQuestion++;
    });
  }

  @override
  Widget build(context) {
    return Container(
      margin: EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "The question is......",
            style: GoogleFonts.adamina(
              fontSize: 36,
              color: Color.fromARGB(255, 28, 29, 29),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40),
          Text(
            currentQuestion[indexOfQuestion].text,
            style: GoogleFonts.agbalumo(
              fontSize: 24,
              color: const Color.fromARGB(255, 28, 29, 29),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 40),
          ...currentQuestion[indexOfQuestion].shuffleAnswers().map(
            (answer) => Answerbuttontemplate(
              text: answer,
              onTap: () {
                incrementIndex();
                widget.selectedAnswer(answer);
              },
            ),
          ),
        ],
      ),
    );
  }
}
