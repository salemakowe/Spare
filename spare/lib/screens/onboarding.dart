import "package:flutter/material.dart";
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:spare/constants/color.dart';
import 'package:spare/introscreens/onboard1.dart';
import 'package:spare/introscreens/onboard2.dart';
import 'package:spare/introscreens/onboard3.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  final PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: const [
              OnboardPage1(),
              OnboardPage2(),
              OnboardPage3(),
            ],
          ),

          //page indicator
          Align(
            alignment: const Alignment(0, 0.5),
            child: SmoothPageIndicator(
              controller: _controller,
              count: 3,
              effect: const WormEffect(
                dotHeight: 12,
                dotWidth: 12,
                activeDotColor: Kolors.sendButton,
              ),
            ),
          ),

          //button
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 15),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                height: MediaQuery.of(context).size.height * 0.08,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Kolors.sendButton),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                  ),
                  child: Text(
                    "Get Started",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
