import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quiz_app/dart_questions/dart_question_two_screen.dart';

class DartQuestionOneScreen extends StatefulWidget {
  const DartQuestionOneScreen({super.key});

  @override
  State<DartQuestionOneScreen> createState() => _DartQuestionOneScreenState();
}

class _DartQuestionOneScreenState extends State<DartQuestionOneScreen> {
  bool? isQuestionOneCorrect;
  bool? isQuestionTwoCorrect;
  bool? isQuestionThreeCorrect;
  int score = 0;
  bool? isAttepmted = false;

  Color setColor(bool? isCorrect) {
    if (isCorrect == null) {
      return const Color(0XFF8787B1);
    } else if (isCorrect == true) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }

  @override
  Widget build(BuildContext context) {
    log("Is correct: $isQuestionOneCorrect");
    log("Is correct: $isQuestionTwoCorrect");
    log("Is correct: $isQuestionThreeCorrect");

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0XFF8787B1),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.brightness_medium_outlined,
              size: 30,
            ),
          ),
        ],
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/dart-logo.png",
              width: 30,
              height: 30,
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'Dart',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color(0XFF29285E),
        ),
        child: Container(
          margin: const EdgeInsets.all(20),
          child: Column(
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "1 of 3 Questions",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    "60",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Row(
                children: [
                  Flexible(
                    child: Text(
                      "1. Dart is a programming language developed by _________.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        overflow: TextOverflow.clip,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF8787B1),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                      color: setColor(isQuestionOneCorrect),
                      width: 5.0,
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    isQuestionOneCorrect = false;
                    isQuestionThreeCorrect = null;
                    isQuestionTwoCorrect = null;
                    score = 0;
                    isAttepmted = true;
                  });
                },
                child: const Text(
                  "Microsoft",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF8787B1),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                      color: setColor(isQuestionTwoCorrect),
                      width: 5.0,
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    isQuestionTwoCorrect = false;
                    isQuestionOneCorrect = null;
                    isQuestionThreeCorrect = null;
                    score = 0;
                    isAttepmted = true;
                  });
                },
                child: const Text(
                  "Open AI",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0XFF8787B1),
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                    side: BorderSide(
                      color: setColor(isQuestionThreeCorrect),
                      width: 5.0,
                    ),
                  ),
                ),
                onPressed: () {
                  //correct answer
                  setState(() {
                    isQuestionThreeCorrect = true;
                    isQuestionOneCorrect = null;
                    isQuestionTwoCorrect = null;
                    score = 1;
                    isAttepmted = true;
                  });
                },
                child: const Text(
                  "Google",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 48, 113, 36),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => DartQuestioTwoScreen(
                            score: score,
                            isQuestionOneAttempted: isAttepmted,
                          ),
                        ),
                      );
                    },
                    child: const Row(
                      children: [
                        Text(
                          "Next",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                          size: 20,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
