import 'package:flutter/material.dart';

class Answerbuttontemplate extends StatelessWidget {
  final String text;
  final void Function() onTap;
  const Answerbuttontemplate({
    required this.text,
    required this.onTap,
    super.key,
  });
  @override
  Widget build(context) {
    return SizedBox(
      width: 200,
      height: 80,
      child: Container(
        margin: EdgeInsets.all(10),
        child: ElevatedButton(
          onPressed: () {
            onTap();
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            backgroundColor: const Color.fromARGB(192, 63, 123, 226),
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(34),
            ),
          ),
          child: Text(
            text,
            style: TextStyle(color: const Color.fromARGB(148, 227, 235, 239)),
          ),
        ),
      ),
    );
  }
}
