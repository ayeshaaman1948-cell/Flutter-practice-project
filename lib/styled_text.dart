import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String text;
  const StyledText(this.text);

  @override
  Widget build(context) {
    return Text(
      text,
      style: TextStyle(
        color: const Color.fromARGB(92, 176, 40, 120),
        fontSize: 19,
      ),
    );
  }
}
