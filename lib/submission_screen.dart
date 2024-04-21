import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:quiz_app/category_screen.dart';

class SubmissionScreen extends StatelessWidget {
  final int score;
  const SubmissionScreen({super.key, required this.score});

  @override
  Widget build(context) {
    log("Score: $score");
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color(0XFF29285E),
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 60, vertical: 200),
          decoration: BoxDecoration(
            color: const Color(0XFF8787B1),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const CategoryScreen(),
                          ),
                        );
                      },
                      icon: const Icon(
                        Icons.close,
                        color: Colors.white,
                      ))
                ],
              ),
              const Text.rich(
                textAlign: TextAlign.center,
                TextSpan(
                  children: [
                    TextSpan(
                      text: "Congrats!!",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 40,
                        color: Colors.yellow,
                      ),
                    ),
                    TextSpan(
                      text: "\nQuiz Completed",
                    ),
                    TextSpan(
                      text: "\nYou have scored",
                    ),
                    TextSpan(
                      text: "\n2/3",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                    ),
                  ],
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    height: 2.0,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CategoryScreen(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: const Text("Play Again"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
