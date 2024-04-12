import 'package:flutter/material.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color: Color(0XFF29285E),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              const SizedBox(
                height: 30,
              ),
              const Text(
                "TEASER",
                style: TextStyle(
                  color: Color(0XFFF3D1B0),
                  fontSize: 40,
                  fontWeight: FontWeight.w800,
                ),
              ),
              const SizedBox(
                height: 60,
              ),
              Image.asset("assets/info-graphics.png"),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Ready to tease your brain?",
                style: TextStyle(
                  color: Color(0XFFF3D1B0),
                  fontSize: 18,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                    const Color(0XFFF3D1B0),
                  ),
                  // padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                  //   EdgeInsets.all(20),
                  // ),
                ),
                onPressed: () {},
                child: const Text(
                  "Get Started",
                  style: TextStyle(
                    fontSize: 24,
                    color: Color(0XFF29285E),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
