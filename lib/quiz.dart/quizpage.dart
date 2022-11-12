import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/quetion_model/quiz_question.dart';
import 'package:flutter_quiz_app/quiz.dart/thankspage.dart';

class QuizApp extends StatefulWidget {
  const QuizApp({Key? key}) : super(key: key);

  @override
  State<QuizApp> createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List option = [
    "option 1",
    "option 2",
    "option 3",
    "option 4",
  ];
  List quiz = [
    quiz1,
    quiz2,
    quiz3,
    quiz4,
    quiz5,
    quiz6,
    quiz7,
    quiz8,
    quiz9,
    quiz10,
    // quiz11,
    quiz11,
    quiz12,
    quiz13,
    quiz14
  ];
  QuizModel currentQuiz = quiz1;
  int currentQuizIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
        // color: Colors.deepPurple,
        image: DecorationImage(
            image: AssetImage("assets/images/jf.jpg"), fit: BoxFit.cover),
      ),
      child: Column(children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(20, 100, 20, 0),
          child: Text(
            "General Knowledge Quiz",
            style: TextStyle(
              color: Colors.white,
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        quizview(context),
      ]),
    ));
  }

  Padding quizview(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 60, 20, 20),
      child: Container(
        width: MediaQuery.of(context).size.width - 40,
        decoration: BoxDecoration(
            color: Colors.deepPurple.withOpacity(0.3),
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Column(
            children: [
              questionview(),
              optionlist(),
            ],
          ),
        ),
      ),
    );
  }

  Padding questionview() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        currentQuiz.question,
        textAlign: TextAlign.center,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 27,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  optionTapped(int index) {
    if (currentQuiz.answer == index) {
      setState(() {
        if (currentQuizIndex < (quiz.length - 1)) {
          currentQuizIndex = currentQuizIndex + 1;
          currentQuiz = quiz[currentQuizIndex];
        } else {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const Thankspage()));
        }
      });
    }
  }

  Container optionlist() {
    return Container(
      height: 350,
      padding: const EdgeInsets.only(top: 10),
      child: ListView.builder(
          padding: EdgeInsets.zero,
          itemCount: currentQuiz.optionList.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.fromLTRB(20, 8, 20, 8),
              child: GestureDetector(
                onTap: () => optionTapped(index),
                child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: optionindex(index),
                  decoration: BoxDecoration(
                      color: Colors.purple[900],
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white54, width: 1)),
                ),
              ),
            );
          }),
    );
  }

  Text optionindex(int index) {
    return Text(
      currentQuiz.optionList[index],
      style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
          letterSpacing: 2.0),
      textAlign: TextAlign.center,
    );
  }
}
