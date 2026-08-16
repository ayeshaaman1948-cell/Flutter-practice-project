import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

class LoginPage extends StatelessWidget {
  const LoginPage();
  @override
  Widget build(context) {
    return Scaffold(
      appBar: AppBar(title: Image.asset("assets/images/appBar_pic.jpeg")),

      body: Column(
        children: [
          SizedBox(height: 30),
          Center(
            child: Text(
              "Sign up",
              style: GoogleFonts.amarante(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(230, 0, 0, 0),
              ),
            ),
          ),
          Center(
            child: Text(
              " Create an account its free",
              style: GoogleFonts.amarante(
                fontSize: 20,
                fontWeight: FontWeight.normal,
                color: Color.fromARGB(146, 0, 0, 0),
              ),
            ),
          ),
          SizedBox(height: 10),
          Container(
            width: 340,
            height: 380,
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: BoxBorder.all(
                color: Color.fromARGB(255, 202, 239, 222),
                width: 8,
              ),
            ),
            child: Column(
              children: [
                Text(
                  "Email:",
                  style: GoogleFonts.amita(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "_____________________",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                Text(
                  "Password:",
                  style: GoogleFonts.amita(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Text(
                  "_____________________",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
                SizedBox(height: 5),
                Text(
                  "Confirm PassWord:",
                  style: GoogleFonts.amita(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "_____________________",
                  style: TextStyle(color: Colors.white, fontSize: 30),
                ),
              ],
              crossAxisAlignment: CrossAxisAlignment.start,
            ),
          ),
          SizedBox(height: 14),
          SizedBox(
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                elevation: 5,
                backgroundColor: Color.fromARGB(123, 212, 226, 220),
              ),
              child: Text(
                "Sign Up",
                style: GoogleFonts.yesteryear(
                  color: Color.fromARGB(224, 205, 238, 223),
                  fontSize: 30,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            width: 200,
            height: 50,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Already Have an account? log in",
              style: GoogleFonts.allura(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 161, 211, 187),
      bottomNavigationBar: Image.asset("assets/images/appBar_pic.jpeg"),
    );
  }
}
