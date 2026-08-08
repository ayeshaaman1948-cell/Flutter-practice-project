import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 161, 202, 223),
        appBar: AppBar(
          title: Text("Tree Cloudy Sky"),
          backgroundColor: Colors.tealAccent,
        ),
        body: Center(
          child: Text(
            "hi hudda aman how are uuu",
            style: TextStyle(color: Colors.lightBlue, fontSize: 24),
          ),
        ),
      ),
    ),
  );
}
