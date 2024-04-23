import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:quiz_app/dart_questions/dart_question_one_screen.dart';
import 'package:quiz_app/dart_questions/dart_question_two_screen.dart';
import 'package:quiz_app/submission_screen.dart';

class DartQuestionThreeScreen extends StatefulWidget {
  final int score;
  final bool? isQuestionTwoAttempted;
  final bool? isQuestionOneAttempted;
  const DartQuestionThreeScreen({
    super.key,
    required this.score,
    required this.isQuestionTwoAttempted,
    required this.isQuestionOneAttempted,
  });

  @override
  State<DartQuestionThreeScreen> createState() =>
      _DartQuestionThreeScreenState();
}

class _DartQuestionThreeScreenState extends State<DartQuestionThreeScreen> {
  bool? isQuestionOneCorrect;
  bool? isQuestionTwoCorrect;
  bool? isQuestionThreeCorrect;
  int currentScore = 0;
  bool? isQuestionThreeAttempted = false;

  Color setColor(bool? isCorrect) {
    if (isCorrect == null) {
      return const Color(0XFF8787B1);
    } else if (isCorrect == true) {
      return Colors.green;
    } else {
      return Colors.red;
    }
  }

  ///Our police man function
  bool isAllQuestionAttempted() {
    if (widget.isQuestionOneAttempted == false ||
        widget.isQuestionTwoAttempted == false ||
        isQuestionThreeAttempted == false) {
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    log("Score: ${widget.score}");
    log("Is Question Two Attempted: ${widget.isQuestionTwoAttempted}");
    log("Is Question One Attempted: ${widget.isQuestionOneAttempted}");
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
                    "3 of 3 Questions",
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

                    currentScore = 0;
                    isQuestionThreeAttempted = true;
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
                    isQuestionOneCorrect = null;
                    isQuestionThreeCorrect = null;
                    isQuestionTwoCorrect = false;

                    currentScore = 0;
                    isQuestionThreeAttempted = true;
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
                  setState(() {
                    isQuestionOneCorrect = null;
                    isQuestionThreeCorrect = true;
                    isQuestionTwoCorrect = null;

                    currentScore = 0;
                    isQuestionThreeAttempted = true;
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
                      isAllQuestionAttempted()
                          ? Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SubmissionScreen(
                                    score: widget.score + currentScore),
                              ),
                            )
                          : showDialog(
                              context: context,
                              builder: (context) {
                                return AlertDialog(
                                  title: const Text("Alert"),
                                  content: Column(
                                    children: [
                                      Visibility(
                                        visible:
                                            !widget.isQuestionOneAttempted!,
                                        child: Column(
                                          children: [
                                            Text(
                                                "Question One was not attempt"),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        DartQuestionOneScreen(),
                                                  ),
                                                );
                                              },
                                              child: Text("Attempt Now"),
                                            )
                                          ],
                                        ),
                                      ),
                                      Visibility(
                                        visible:
                                            !widget.isQuestionTwoAttempted!,
                                        child: Column(
                                          children: [
                                            Text(
                                                "Question Two was not attempted"),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        DartQuestioTwoScreen(
                                                      score: widget.score,
                                                      isQuestionOneAttempted: widget
                                                          .isQuestionOneAttempted,
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: Text("Attempt Now"),
                                            ),
                                            Divider(),
                                          ],
                                        ),
                                      ),
                                      Visibility(
                                        visible: !isQuestionThreeAttempted!,
                                        child: Column(
                                          children: [
                                            const Text(
                                                "Question Three was not attempted"),
                                            TextButton(
                                              onPressed: () {
                                                Navigator.of(context).push(
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        DartQuestionThreeScreen(
                                                      score: widget.score,
                                                      isQuestionOneAttempted: widget
                                                          .isQuestionOneAttempted,
                                                      isQuestionTwoAttempted: widget
                                                          .isQuestionTwoAttempted,
                                                    ),
                                                  ),
                                                );
                                              },
                                              child: const Text("Attempt Now"),
                                            ),
                                            const Divider(),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      child: const Text("OK"),
                                    ),
                                  ],
                                );
                              },
                            );
                    },
                    child: const Row(
                      children: [
                        Text(
                          "Finish",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
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
