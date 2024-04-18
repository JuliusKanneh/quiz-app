import 'package:flutter/material.dart';
import 'package:quiz_app/dart_questions/dart_question_one_screen.dart';
import 'package:quiz_app/java_questions/java_question_one_screen.dart';
import 'package:quiz_app/js_questions_screen.dart';
import 'package:quiz_app/php_questions_screen.dart';
import 'package:quiz_app/widgets/category_button.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
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
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Choose the Quiz",
                      style: TextStyle(
                        color: Color(0XFFF3D1B0),
                        fontSize: 24,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Select the category you want to play",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                CategoryButton(
                  logoPath: "assets/java-logo.png",
                  label: "Java",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const JavaQuestionOneScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CategoryButton(
                  label: "Dart",
                  logoPath: "assets/dart-logo.png",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DartQuestionOneScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CategoryButton(
                  label: "PHP",
                  logoPath: "assets/PHP-logo.png",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const PhPQuestionsScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                CategoryButton(
                  label: "JavaScript",
                  logoPath: "assets/js-logo.png",
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const JSQuestionsScreen(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
