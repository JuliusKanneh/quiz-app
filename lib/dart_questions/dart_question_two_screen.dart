import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quiz_app/dart_questions/dart_question_three_screen.dart';

class DartQuestioTwoScreen extends StatefulWidget {
  final int score;
  const DartQuestioTwoScreen({super.key, required this.score});

  @override
  State<DartQuestioTwoScreen> createState() => _DartQuestioTwoScreenState();
}

class _DartQuestioTwoScreenState extends State<DartQuestioTwoScreen> {
  bool? isQuestionOneCorrect;
  bool? isQuestionTwoCorrect;
  bool? isQuestionThreeCorrect;
  int currentScore = 0;
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
    log("Score: ${widget.score}");
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
                    "2 of 3 Questions",
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
                      "2. Dart is a _____ programming language.",
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

                    currentScore = 0;
                  });
                },
                child: const Text(
                  "Procedural Programming Language",
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
                    isQuestionTwoCorrect = true;
                    isQuestionOneCorrect = null;
                    isQuestionThreeCorrect = null;
                    currentScore = 1;
                  });
                },
                child: const Text(
                  "Object Oriented Programming Language",
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
                  setState(() {
                    isQuestionThreeCorrect = false;
                    isQuestionTwoCorrect = null;
                    isQuestionOneCorrect = null;
                    currentScore = 0;
                  });
                },
                child: const Text(
                  "Scripting Language",
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
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 48, 113, 36),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Row(
                      children: [
                        Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 20,
                        ),
                        Text(
                          "Previous",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
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
                          builder: (context) => DartQuestionThreeScreen(
                            score: widget.score + currentScore,
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
