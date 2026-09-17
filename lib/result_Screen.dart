import "package:flutter/material.dart";
import "package:quiz_app/StyledText.dart";
import "package:quiz_app/model/questionscontainer.dart";
import "package:quiz_app/QuestionSummary.dart";

class ResultScreen extends StatelessWidget {
  final List<String> chosenAnswers;
  final void Function() switchScreen;

  const ResultScreen({
    super.key,
    required this.chosenAnswers,
    required this.switchScreen,
  });

  List<Map<String, Object>> summaryFunction() {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < chosenAnswers.length; i++) {
      summary.add({
        "Question index": (i + 1).toString(),
        "Question": questions[i].text,
        "Correct Answer": questions[i].answers[0],
        "User selected Answer:": chosenAnswers[i],
      });
    }
    return summary;
  }

  @override
  Widget build(context) {
    final totalNumberOFQuestions = questions.length;
    final int totalCorrectAnswers = summaryFunction().where((data) {
      return data["Correct Answer"] == data["User selected Answer:"];
    }).length;

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

      child: Center(
        child: SizedBox(
          height: 600,
          width: 400,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                StyledText(
                  data:
                      "You have answered $totalCorrectAnswers out of $totalNumberOFQuestions correct ",
                  fontSize: 19,
                  fontColor: Colors.white,
                ),
                SizedBox(height: 30),
                QuestionsSummary(summary: summaryFunction()),

                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 12,
                    backgroundColor: const Color.fromARGB(206, 72, 162, 236),
                    padding: EdgeInsets.all(10),
                  ),
                  onPressed: () {
                    switchScreen();
                  },
                  child: StyledText(
                    data: "restartQuiz",
                    fontSize: 20,
                    fontColor: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
