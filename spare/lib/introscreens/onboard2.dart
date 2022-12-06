import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class OnboardPage2 extends StatefulWidget {
  const OnboardPage2({super.key});

  @override
  State<OnboardPage2> createState() => _OnboardPage2State();
}

class _OnboardPage2State extends State<OnboardPage2> {
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
              "assets/img/intro2.png",
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
              fontSize: 23,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Text(
              "With spare, you can ask for bills,"
              "food, entertainment, utilities and still save.",
              textAlign: TextAlign.center,
              maxLines: 2,
              style: GoogleFonts.poppins(
                color: const Color(0xff87898e),
                fontSize: 13,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
