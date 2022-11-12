import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/quiz.dart/quizpage.dart';
// import 'package:google_fonts/google_fonts.dart';

class Thankspage extends StatelessWidget {
  const Thankspage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.deepPurple,
          image: DecorationImage(
              image: AssetImage("assets/images/jf.jpg"), fit: BoxFit.cover),
        ),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
              child: Text(
                "Thank You For Playing This Quiz ",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const Spacer(),

            Padding(
              padding: const EdgeInsets.only(bottom: 50),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const QuizApp()));
                },
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: Text(
                    "Restart Quiz",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    elevation: 5,
                    primary: Colors.deepPurple.withOpacity(0.9),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)))),
              ),
            ),
            //exit
            Padding(
              padding: const EdgeInsets.only(bottom: 100),
              child: ElevatedButton(
                onPressed: () {
                  exit(0);
                },
                child: const Padding(
                  padding: EdgeInsets.fromLTRB(40, 10, 40, 10),
                  child: Text(
                    "Exit",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ),
                style: ElevatedButton.styleFrom(
                    elevation: 5,
                    primary: Colors.deepPurple.withOpacity(0.9),
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
