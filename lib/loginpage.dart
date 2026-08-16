import 'package:flutter/material.dart';

class LoginButton extends StatelessWidget {
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Button Practice",
          style: TextStyle(
            color: Colors.cyan,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: /*Container(
  decoration: BoxDecoration(
  color: Colors.pink,
  borderRadius: BorderRadius.circular(39),
  border: BoxBorder.all(width: 9, color: Colors.black),
  ),*/ Center(
        child: SizedBox(
          width: 200,
          height: 200,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.pink,
              foregroundColor: Colors.white,
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(0),
              ),
              padding: EdgeInsets.all(45),
            ),

            onPressed: () => print("Helooooo"),
            onLongPress: () => print("do u want to delete this"),
            child: Text(
              "Login in",
              style: TextStyle(
                //color: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
