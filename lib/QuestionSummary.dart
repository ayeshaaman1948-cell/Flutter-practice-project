import 'package:flutter/material.dart';
import "package:quiz_app/StyledText.dart";

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summary;

  const QuestionsSummary({required this.summary, super.key});

  @override
  Widget build(context) {
    return Column(
      children: [
        ...summary.expand((data) {
          return [
            Row(
              children: [
                Container(
                  height: 20,
                  width: 20,
                  decoration: BoxDecoration(color: Colors.white),
                  child: StyledText(
                    data: data["Question index"] as String,
                    fontColor: Colors.black,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            StyledText(
              data: data["Question"] as String,
              fontColor: Colors.black,
              fontSize: 18,
            ),
            SizedBox(height: 7),
            StyledText(
              data: data["Correct Answer"] as String,
              fontColor: Colors.lightBlue,
              fontSize: 15,
            ),
            SizedBox(height: 5),
            StyledText(
              data: data["User selected Answer:"] as String,
              fontColor: Colors.white,
              fontSize: 15,
            ),
            SizedBox(height: 30),
          ];
        }),
      ],
    );
  }
}
