import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';

class OnboardPage3 extends StatefulWidget {
  const OnboardPage3({super.key});

  @override
  State<OnboardPage3> createState() => _OnboardPage3State();
}

class _OnboardPage3State extends State<OnboardPage3> {
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
              "assets/img/intro3.png",
              width: MediaQuery.of(context).size.width * 0.7,
              height: MediaQuery.of(context).size.height * 0.5,
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Text(
            textAlign: TextAlign.center,
            "Send Money with Spare",
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
