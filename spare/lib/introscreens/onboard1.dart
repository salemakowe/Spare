import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class OnboardPage1 extends StatefulWidget {
  const OnboardPage1({super.key});

  @override
  State<OnboardPage1> createState() => _OnboardPage1State();
}

class _OnboardPage1State extends State<OnboardPage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(0, 20, 0, 0),
            alignment: Alignment.topCenter,
            child: Image.asset(
              "assets/img/intro1.png",
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.5,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            textAlign: TextAlign.center,
            "Spend & Save With Spare",
            style: GoogleFonts.inter(
              fontWeight: FontWeight.w700,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "With spare, you can ask for bills,"
            "food, entertainment, utilities and still save",
            textAlign: TextAlign.center,
            maxLines: 2,
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text("Get Started"),
          ),
        ],
      ),
    );
  }
}
